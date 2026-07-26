                        .intel_syntax    noprefix
                        .text
                        .globl           proc_EMIT_α
proc_EMIT_α:
#=======================================================================================================================
                        .global          proc_EMIT_α
                        .global          proc_EMIT_β
                        .global          proc_EMIT_γ
                        .global          proc_EMIT_ω
                        sub              rsp, 464
                        mov              [rsp + 440], rcx
                        mov              [rsp + 448], rdx
                        mov              [rsp + 456], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 416], 0
                        mov              qword ptr [rsp + 424], rsp
proc_EMIT_α_body:
# EMIT    OUTPUT = DRF(S[1])
# IR_VAR
xchain0_n0_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   xchain0_n1_α
# IR_LIT_INTEGER
xchain0_n1_α:
                        mov              qword ptr [rbp + 192], 6
                        mov              rax, qword ptr [rip + .Lx2_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   xchain0_n3_α
.Lx2_0:
                        .quad            1
#         sp = 0
# IR_LIT_INTEGER
xchain0_n2_α:
                        mov              qword ptr [rbp + 288], 6
                        mov              rax, qword ptr [rip + .Lx3_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   xchain0_n4_α
.Lx3_0:
                        .quad            0
# IR_SUBSCRIPT x[i] variable
xchain0_n3_α:
                        mov              rdi, qword ptr [rbp + 160]
                        mov              rsi, qword ptr [rbp + 168]
                        mov              rdx, qword ptr [rbp + 192]
                        mov              rcx, qword ptr [rbp + 200]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain0_n2_α
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   xchain0_n5_α
# IR_ASSIGN gva
xchain0_n4_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        mov              qword ptr [1879052464], rax
                        mov              qword ptr [1879052472], rdx
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   xchain0_n6_α
# IR_DEREF variable -> value
xchain0_n5_α:
                        mov              rdi, qword ptr [rbp + 224]
                        mov              rsi, qword ptr [rbp + 232]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    xchain0_n2_α
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   xchain0_n7_α
#         EMIT = .dm                              :(NRETURN)
# IR_LIT_STRING
xchain0_n6_α:
                        mov              qword ptr [rbp + 384], 1
                        mov              rax, qword ptr [rip + .Lx7_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   xchain0_n8_α
.Lx7_0:
                        .quad            .Lx7_0_s
.Lx7_0_s:
                        .string          "dm"
xchain0_n7_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052336]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx9_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx9_5
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx9_6]
                        lea              rdx, [rip + .Lx9_7]
                                                                                        jmp   rax
.Lx9_6:
                        mov              rdi, qword ptr [1879052320]
                        mov              rsi, qword ptr [1879052328]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052344], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx9_2
.Lx9_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052344], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx9_2
.Lx9_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx9_20
                        mov              rax, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx9_21
.Lx9_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        call             rt_arg_stage@PLT
.Lx9_21:
                        mov              rdi, qword ptr [rip + .Lx9_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx9_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx9_3]
                        lea              rdx, [rip + .Lx9_4]
                                                                                        jmp   rax
.Lx9_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx9_2
.Lx9_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx9_2
.Lx9_1:
                        call             rt_faildescr@PLT
.Lx9_2:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    xchain0_n2_α
                                                                                        jmp   xchain0_n9_α
xchain0_n7_β:
                                                                                        jmp   xchain0_n2_α
.Lx9_0:
                        .quad            .Lx9_0_s
.Lx9_0_s:
                        .string          "DRF"
xchain0_n8_α:
# BOX IR_CALL SNO$NAME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+384] -> [zr+352]
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 360], rax
                        .section         .rodata
.Lrkfn11:               .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn11]
                        lea              rsi, [rbp + 352]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    xchain0_n11_α
                                                                                        jmp   xchain0_n10_α
xchain0_n8_β:
                                                                                        jmp   xchain0_n11_α
# IR_ASSIGN global
xchain0_n9_α:
                        mov              rsi, qword ptr [rbp + 112]
                        mov              rdx, qword ptr [rbp + 120]
                        mov              rdi, qword ptr [rip + .Lx12_0]
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   xchain0_n2_α
.Lx12_0:
                        .quad            .Lx12_0_s
.Lx12_0_s:
                        .string          "OUTPUT"
# IR_ASSIGN gva
xchain0_n10_α:
                        mov              rax, qword ptr [rbp + 336]
                        mov              rdx, qword ptr [rbp + 344]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   xchain0_n11_α
# IR_LIT_STRING
xchain0_n11_α:
                        mov              qword ptr [rbp + 16], 1
                        mov              rax, qword ptr [rip + .Lx14_0]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   xchain0_n12_α
.Lx14_0:
                        .quad            .Lx14_0_s
.Lx14_0_s:
                        .string          ""
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
                                                                                        je    proc_EMIT_ω
                                                                                        jmp   proc_EMIT_γ
xchain0_n12_β:
                                                                                        jmp   proc_EMIT_ω
proc_EMIT_res:
                        add              rsp, 8
                        pop              rbp
proc_EMIT_β:
                                                                                        jmp   proc_EMIT_ω
proc_EMIT_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 440]
                        lea              rsp, [rbp + 464]
                        mov              rbp, [rbp + 456]
                                                                                        jmp   rax
proc_EMIT_ω:
                        mov              rax, [rbp + 448]
                        lea              rsp, [rbp + 464]
                        mov              rbp, [rbp + 456]
                                                                                        jmp   rax
                        .globl           proc_PSH_α
proc_PSH_α:
#=======================================================================================================================
                        .global          proc_PSH_α
                        .global          proc_PSH_β
                        .global          proc_PSH_γ
                        .global          proc_PSH_ω
                        sub              rsp, 368
                        mov              [rsp + 344], rcx
                        mov              [rsp + 352], rdx
                        mov              [rsp + 360], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 320], 0
                        mov              qword ptr [rsp + 328], rsp
proc_PSH_α_body:
# PSH     sp = sp + 1
# IR_VAR
xchain17_n0_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   xchain17_n1_α
# IR_LIT_INTEGER
xchain17_n1_α:
                        mov              qword ptr [rbp + 176], 6
                        mov              rax, qword ptr [rip + .Lx19_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   xchain17_n3_α
.Lx19_0:
                        .quad            1
#         PSH = .S[sp]                            :(NRETURN)
# IR_VAR
xchain17_n2_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   xchain17_n4_α
xchain17_n3_α:
# IR_BINOP_ARITH
                        mov              eax, dword ptr [rbp + 144]
                        cmp              eax, 100
                                                                                        je    .Lx21_0
                        mov              eax, dword ptr [rbp + 144]
                        cmp              eax, 6
                                                                                        jne   .Lx21_2
.Lx21_1:
                        mov              rax, qword ptr [rbp + 152]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 112], 6
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   xchain17_n6_α
.Lx21_0:
                        mov              rdi, qword ptr [rbp + 144]
                        mov              rsi, qword ptr [rbp + 152]
                        mov              rdx, qword ptr [rbp + 176]
                        mov              rcx, qword ptr [rbp + 184]
                        mov              r8d, 0
                        lea              r9, [rbp + 112]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   xchain17_n6_α
.Lx21_2:
                        mov              rdi, qword ptr [rbp + 144]
                        mov              rsi, qword ptr [rbp + 152]
                        mov              rdx, qword ptr [rbp + 176]
                        mov              rcx, qword ptr [rbp + 184]
                        mov              r8d, 0
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    xchain17_n2_α
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                                                                                        jmp   xchain17_n6_α
xchain17_n3_β:
                                                                                        jmp   xchain17_n2_α
# IR_VAR
xchain17_n4_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   xchain17_n7_α
# IR_LIT_STRING
xchain17_n5_α:
                        mov              qword ptr [rbp + 16], 1
                        mov              rax, qword ptr [rip + .Lx23_0]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   xchain17_n8_α
.Lx23_0:
                        .quad            .Lx23_0_s
.Lx23_0_s:
                        .string          ""
# IR_ASSIGN gva
xchain17_n6_α:
                        mov              rax, qword ptr [rbp + 112]
                        mov              rdx, qword ptr [rbp + 120]
                        mov              qword ptr [1879052464], rax
                        mov              qword ptr [1879052472], rdx
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   xchain17_n2_α
# IR_SUBSCRIPT x[i] variable
xchain17_n7_α:
                        mov              rdi, qword ptr [rbp + 224]
                        mov              rsi, qword ptr [rbp + 232]
                        mov              rdx, qword ptr [rbp + 256]
                        mov              rcx, qword ptr [rbp + 264]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain17_n5_α
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   xchain17_n9_α
xchain17_n8_α:
# BOX IR_CALL SNO$NRET(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+16] -> [zr+64]
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 72], rax
                        .section         .rodata
.Lrkfn27:               .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn27]
                        lea              rsi, [rbp + 64]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_PSH_ω
                                                                                        jmp   proc_PSH_γ
xchain17_n8_β:
                                                                                        jmp   proc_PSH_ω
# IR_ASSIGN gva
xchain17_n9_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        mov              qword ptr [1879052304], rax
                        mov              qword ptr [1879052312], rdx
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   xchain17_n5_α
proc_PSH_res:
                        add              rsp, 8
                        pop              rbp
proc_PSH_β:
                                                                                        jmp   proc_PSH_ω
proc_PSH_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 344]
                        lea              rsp, [rbp + 368]
                        mov              rbp, [rbp + 360]
                                                                                        jmp   rax
proc_PSH_ω:
                        mov              rax, [rbp + 352]
                        lea              rsp, [rbp + 368]
                        mov              rbp, [rbp + 360]
                                                                                        jmp   rax
                        .globl           proc_DRF_α
proc_DRF_α:
#=======================================================================================================================
                        .global          proc_DRF_α
                        .global          proc_DRF_β
                        .global          proc_DRF_γ
                        .global          proc_DRF_ω
                        sub              rsp, 512
                        mov              [rsp + 488], rcx
                        mov              [rsp + 496], rdx
                        mov              [rsp + 504], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 464], 0
                        mov              qword ptr [rsp + 472], rsp
proc_DRF_α_body:
# DRF     nm POS(0) ANY(&LCASE) RPOS(0)           :F(DRF_n)
# IR_VAR
xchain29_n0_α:
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   xchain29_n1_α
xchain29_n0_β:
                                                                                        jmp   xchain29_n2_α
# IR_MATCH_HEAD
xchain29_n1_α:
                        mov              qword ptr [rbp + 152], rbp
                        mov              rdi, qword ptr [rbp + 256]
                        mov              rsi, qword ptr [rbp + 264]
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
.Lx32_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   xchain29_n3_α
xchain29_n1_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx32_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx32_1
                                                                                        jmp   .Lx32_0
.Lx32_1:
                        mov              rax, qword ptr [rsp + 8]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rsp + 16]
                        mov              r12, qword ptr [rbp + 144]
                        mov              rbp, qword ptr [rbp + 152]
                                                                                        jmp   xchain29_n2_α
# DRF_n   DRF = nm                                :(RETURN)
# IR_VAR
xchain29_n2_α:
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   xchain29_n4_α
xchain29_n2_β:
                                                                                        jmp   proc_DRF_γ
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
xchain29_n3_α:
                                                                                        jmp   xchain29_n6_α
xchain29_n3_as:
                                                                                        jmp   xchain29_n5_α
xchain29_n3_β:
                                                                                        jmp   xchain29_n10_β
xchain29_n3_af:
                                                                                        jmp   xchain29_n1_β
# IR_ASSIGN gva
xchain29_n4_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              rdx, qword ptr [rbp + 440]
                        mov              qword ptr [1879052320], rax
                        mov              qword ptr [1879052328], rdx
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   proc_DRF_γ
xchain29_n4_β:
                                                                                        jmp   proc_DRF_γ
# IR_MATCH_RELEASE
xchain29_n5_α:
                        mov              rax, qword ptr [rsp + 8]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rsp + 16]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rsp + 176]
                        mov              rsi, r12
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx38_1:
                        test             rax, rax
                                                                                        je    .Lx38_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx38_3]
                        lea              rdx, [rip + .Lx38_4]
                                                                                        jmp   rax
.Lx38_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx38_1
.Lx38_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx38_1
.Lx38_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + 144]
                        mov              rbp, qword ptr [rbp + 152]
                                                                                        jmp   xchain29_n11_α
# IR_LIT_INTEGER
xchain29_n6_α:
                        mov              qword ptr [rbp + 192], 6
                        mov              rax, qword ptr [rip + .Lx39_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   xchain29_n7_α
xchain29_n6_β:
                                                                                        jmp   xchain29_n1_β
.Lx39_0:
                        .quad            0
# IR_MATCH_POS
xchain29_n7_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   xchain29_n1_β
                                                                                        jmp   xchain29_n8_α
xchain29_n7_β:
                                                                                        jmp   xchain29_n1_β
# IR_MATCH_ANY
xchain29_n8_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jge   xchain29_n1_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C0]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    xchain29_n1_β
                        add              r14d, 1
                                                                                        jmp   xchain29_n9_α
xchain29_n8_β:
                        sub              r14d, 1
                                                                                        jmp   xchain29_n1_β
# IR_LIT_INTEGER
xchain29_n9_α:
                        mov              qword ptr [rbp + 224], 6
                        mov              rax, qword ptr [rip + .Lx43_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   xchain29_n10_α
xchain29_n9_β:
                                                                                        jmp   xchain29_n8_β
.Lx43_0:
                        .quad            0
# IR_MATCH_RPOS
xchain29_n10_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   xchain29_n8_β
                                                                                        jmp   xchain29_n5_α
xchain29_n10_β:
                                                                                        jmp   xchain29_n8_β
#         DRF = vars[nm]                          :(RETURN)
# IR_VAR
xchain29_n11_α:
                        mov              rax, qword ptr [1879052496]
                        mov              rdx, qword ptr [1879052504]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   xchain29_n12_α
xchain29_n11_β:
                                                                                        jmp   proc_DRF_γ
# IR_VAR
xchain29_n12_α:
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   xchain29_n13_α
xchain29_n12_β:
                                                                                        jmp   proc_DRF_γ
# IR_SUBSCRIPT x[i] variable
xchain29_n13_α:
                        mov              rdi, qword ptr [rbp + 304]
                        mov              rsi, qword ptr [rbp + 312]
                        mov              rdx, qword ptr [rbp + 336]
                        mov              rcx, qword ptr [rbp + 344]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    proc_DRF_γ
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   xchain29_n14_α
xchain29_n13_β:
                                                                                        jmp   proc_DRF_γ
# IR_DEREF variable -> value
xchain29_n14_α:
                        mov              rdi, qword ptr [rbp + 368]
                        mov              rsi, qword ptr [rbp + 376]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    proc_DRF_γ
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   xchain29_n15_α
xchain29_n14_β:
                                                                                        jmp   proc_DRF_γ
# IR_ASSIGN gva
xchain29_n15_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              rdx, qword ptr [rbp + 408]
                        mov              qword ptr [1879052320], rax
                        mov              qword ptr [1879052328], rdx
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   proc_DRF_γ
xchain29_n15_β:
                                                                                        jmp   proc_DRF_γ
proc_DRF_res:
                        add              rsp, 8
                        pop              rbp
proc_DRF_β:
                                                                                        jmp   proc_DRF_ω
proc_DRF_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 488]
                        lea              rsp, [rbp + 512]
                        mov              rbp, [rbp + 504]
                                                                                        jmp   rax
proc_DRF_ω:
                        mov              rax, [rbp + 496]
                        lea              rsp, [rbp + 512]
                        mov              rbp, [rbp + 504]
                                                                                        jmp   rax
                        .globl           proc_ADD_α
proc_ADD_α:
#=======================================================================================================================
                        .global          proc_ADD_α
                        .global          proc_ADD_β
                        .global          proc_ADD_γ
                        .global          proc_ADD_ω
                        sub              rsp, 864
                        mov              [rsp + 840], rcx
                        mov              [rsp + 848], rdx
                        mov              [rsp + 856], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 816], 0
                        mov              qword ptr [rsp + 824], rsp
proc_ADD_α_body:
# ADD     p1 = DRF(S[sp])
# IR_VAR
xchain50_n0_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   xchain50_n1_α
# IR_VAR
xchain50_n1_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   xchain50_n3_α
#         sp = sp - 1
# IR_VAR
xchain50_n2_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   xchain50_n4_α
# IR_SUBSCRIPT x[i] variable
xchain50_n3_α:
                        mov              rdi, qword ptr [rbp + 160]
                        mov              rsi, qword ptr [rbp + 168]
                        mov              rdx, qword ptr [rbp + 192]
                        mov              rcx, qword ptr [rbp + 200]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain50_n2_α
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   xchain50_n6_α
# IR_LIT_INTEGER
xchain50_n4_α:
                        mov              qword ptr [rbp + 352], 6
                        mov              rax, qword ptr [rip + .Lx55_0]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   xchain50_n7_α
.Lx55_0:
                        .quad            1
#         S[sp] = DRF(S[sp]) + p1
# IR_VAR
xchain50_n5_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   xchain50_n8_α
# IR_DEREF variable -> value
xchain50_n6_α:
                        mov              rdi, qword ptr [rbp + 224]
                        mov              rsi, qword ptr [rbp + 232]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    xchain50_n2_α
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   xchain50_n10_α
xchain50_n7_α:
# IR_BINOP_ARITH
                        mov              eax, dword ptr [rbp + 320]
                        cmp              eax, 100
                                                                                        je    .Lx58_0
                        mov              eax, dword ptr [rbp + 320]
                        cmp              eax, 6
                                                                                        jne   .Lx58_2
.Lx58_1:
                        mov              rax, qword ptr [rbp + 328]
                        mov              rcx, 1
                        sub              rax, rcx
                        mov              qword ptr [rbp + 288], 6
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   xchain50_n11_α
.Lx58_0:
                        mov              rdi, qword ptr [rbp + 320]
                        mov              rsi, qword ptr [rbp + 328]
                        mov              rdx, qword ptr [rbp + 352]
                        mov              rcx, qword ptr [rbp + 360]
                        mov              r8d, 1
                        lea              r9, [rbp + 288]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   xchain50_n11_α
.Lx58_2:
                        mov              rdi, qword ptr [rbp + 320]
                        mov              rsi, qword ptr [rbp + 328]
                        mov              rdx, qword ptr [rbp + 352]
                        mov              rcx, qword ptr [rbp + 360]
                        mov              r8d, 1
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    xchain50_n5_α
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   xchain50_n11_α
xchain50_n7_β:
                                                                                        jmp   xchain50_n5_α
# IR_VAR
xchain50_n8_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   xchain50_n12_α
#         ADD = .dm                               :(NRETURN)
# IR_LIT_STRING
xchain50_n9_α:
                        mov              qword ptr [rbp + 784], 1
                        mov              rax, qword ptr [rip + .Lx60_0]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   xchain50_n13_α
.Lx60_0:
                        .quad            .Lx60_0_s
.Lx60_0_s:
                        .string          "dm"
xchain50_n10_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052336]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx62_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx62_5
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx62_6]
                        lea              rdx, [rip + .Lx62_7]
                                                                                        jmp   rax
.Lx62_6:
                        mov              rdi, qword ptr [1879052320]
                        mov              rsi, qword ptr [1879052328]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052344], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx62_2
.Lx62_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052344], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx62_2
.Lx62_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx62_20
                        mov              rax, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx62_21
.Lx62_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        call             rt_arg_stage@PLT
.Lx62_21:
                        mov              rdi, qword ptr [rip + .Lx62_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx62_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx62_3]
                        lea              rdx, [rip + .Lx62_4]
                                                                                        jmp   rax
.Lx62_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx62_2
.Lx62_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx62_2
.Lx62_1:
                        call             rt_faildescr@PLT
.Lx62_2:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    xchain50_n2_α
                                                                                        jmp   xchain50_n14_α
xchain50_n10_β:
                                                                                        jmp   xchain50_n2_α
.Lx62_0:
                        .quad            .Lx62_0_s
.Lx62_0_s:
                        .string          "DRF"
# IR_ASSIGN gva
xchain50_n11_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        mov              qword ptr [1879052464], rax
                        mov              qword ptr [1879052472], rdx
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   xchain50_n5_α
# IR_SUBSCRIPT x[i] variable
xchain50_n12_α:
                        mov              rdi, qword ptr [rbp + 384]
                        mov              rsi, qword ptr [rbp + 392]
                        mov              rdx, qword ptr [rbp + 416]
                        mov              rcx, qword ptr [rbp + 424]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain50_n9_α
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   xchain50_n15_α
xchain50_n13_α:
# BOX IR_CALL SNO$NAME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+784] -> [zr+752]
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 760], rax
                        .section         .rodata
.Lrkfn66:               .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn66]
                        lea              rsi, [rbp + 752]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        cmp              eax, 99
                                                                                        je    xchain50_n17_α
                                                                                        jmp   xchain50_n16_α
xchain50_n13_β:
                                                                                        jmp   xchain50_n17_α
# IR_ASSIGN gva
xchain50_n14_α:
                        mov              rax, qword ptr [rbp + 112]
                        mov              rdx, qword ptr [rbp + 120]
                        mov              qword ptr [1879052368], rax
                        mov              qword ptr [1879052376], rdx
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   xchain50_n2_α
# IR_VAR
xchain50_n15_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   xchain50_n18_α
# IR_ASSIGN gva
xchain50_n16_α:
                        mov              rax, qword ptr [rbp + 736]
                        mov              rdx, qword ptr [rbp + 744]
                        mov              qword ptr [1879052352], rax
                        mov              qword ptr [1879052360], rdx
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                                                                                        jmp   xchain50_n17_α
# IR_LIT_STRING
xchain50_n17_α:
                        mov              qword ptr [rbp + 16], 1
                        mov              rax, qword ptr [rip + .Lx70_0]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   xchain50_n19_α
.Lx70_0:
                        .quad            .Lx70_0_s
.Lx70_0_s:
                        .string          ""
# IR_VAR
xchain50_n18_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   xchain50_n20_α
xchain50_n19_α:
# BOX IR_CALL SNO$NRET(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+16] -> [zr+64]
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 72], rax
                        .section         .rodata
.Lrkfn73:               .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn73]
                        lea              rsi, [rbp + 64]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_ADD_ω
                                                                                        jmp   proc_ADD_γ
xchain50_n19_β:
                                                                                        jmp   proc_ADD_ω
# IR_SUBSCRIPT x[i] variable
xchain50_n20_α:
                        mov              rdi, qword ptr [rbp + 560]
                        mov              rsi, qword ptr [rbp + 568]
                        mov              rdx, qword ptr [rbp + 592]
                        mov              rcx, qword ptr [rbp + 600]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain50_n9_α
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                                                                                        jmp   xchain50_n21_α
# IR_DEREF variable -> value
xchain50_n21_α:
                        mov              rdi, qword ptr [rbp + 624]
                        mov              rsi, qword ptr [rbp + 632]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    xchain50_n9_α
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   xchain50_n22_α
xchain50_n22_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052336]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx77_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx77_5
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx77_6]
                        lea              rdx, [rip + .Lx77_7]
                                                                                        jmp   rax
.Lx77_6:
                        mov              rdi, qword ptr [1879052320]
                        mov              rsi, qword ptr [1879052328]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052344], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx77_2
.Lx77_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052344], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx77_2
.Lx77_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx77_20
                        mov              rax, qword ptr [rbp + 656]
                        mov              rdx, qword ptr [rbp + 664]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx77_21
.Lx77_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 656]
                        mov              rdx, qword ptr [rbp + 664]
                        call             rt_arg_stage@PLT
.Lx77_21:
                        mov              rdi, qword ptr [rip + .Lx77_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx77_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx77_3]
                        lea              rdx, [rip + .Lx77_4]
                                                                                        jmp   rax
.Lx77_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx77_2
.Lx77_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx77_2
.Lx77_1:
                        call             rt_faildescr@PLT
.Lx77_2:
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              eax, 99
                                                                                        je    xchain50_n9_α
                                                                                        jmp   xchain50_n23_α
xchain50_n22_β:
                                                                                        jmp   xchain50_n9_α
.Lx77_0:
                        .quad            .Lx77_0_s
.Lx77_0_s:
                        .string          "DRF"
# IR_VAR
xchain50_n23_α:
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   xchain50_n24_α
xchain50_n24_α:
# IR_BINOP_ARITH
                        mov              eax, dword ptr [rbp + 512]
                        cmp              eax, 100
                                                                                        je    .Lx79_0
                        mov              eax, dword ptr [rbp + 672]
                        cmp              eax, 100
                                                                                        je    .Lx79_0
                        mov              eax, dword ptr [rbp + 512]
                        cmp              eax, 6
                                                                                        jne   .Lx79_2
                        mov              eax, dword ptr [rbp + 672]
                        cmp              eax, 6
                                                                                        jne   .Lx79_2
.Lx79_1:
                        mov              rax, qword ptr [rbp + 520]
                        mov              rcx, qword ptr [rbp + 680]
                        add              rax, rcx
                        mov              qword ptr [rbp + 480], 6
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   xchain50_n25_α
.Lx79_0:
                        mov              rdi, qword ptr [rbp + 512]
                        mov              rsi, qword ptr [rbp + 520]
                        mov              rdx, qword ptr [rbp + 672]
                        mov              rcx, qword ptr [rbp + 680]
                        mov              r8d, 0
                        lea              r9, [rbp + 480]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   xchain50_n25_α
.Lx79_2:
                        mov              rdi, qword ptr [rbp + 512]
                        mov              rsi, qword ptr [rbp + 520]
                        mov              rdx, qword ptr [rbp + 672]
                        mov              rcx, qword ptr [rbp + 680]
                        mov              r8d, 0
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    xchain50_n9_α
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   xchain50_n25_α
xchain50_n24_β:
                                                                                        jmp   xchain50_n9_α
# IR_ASSIGN_VAR
xchain50_n25_α:
                        mov              rdi, qword ptr [rbp + 448]
                        mov              rsi, qword ptr [rbp + 456]
                        mov              rdx, qword ptr [rbp + 480]
                        mov              rcx, qword ptr [rbp + 488]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain50_n9_α
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                                                                                        jmp   xchain50_n9_α
proc_ADD_res:
                        add              rsp, 8
                        pop              rbp
proc_ADD_β:
                                                                                        jmp   proc_ADD_ω
proc_ADD_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 840]
                        lea              rsp, [rbp + 864]
                        mov              rbp, [rbp + 856]
                                                                                        jmp   rax
proc_ADD_ω:
                        mov              rax, [rbp + 848]
                        lea              rsp, [rbp + 864]
                        mov              rbp, [rbp + 856]
                                                                                        jmp   rax
                        .globl           proc_SUB_α
proc_SUB_α:
#=======================================================================================================================
                        .global          proc_SUB_α
                        .global          proc_SUB_β
                        .global          proc_SUB_γ
                        .global          proc_SUB_ω
                        sub              rsp, 864
                        mov              [rsp + 840], rcx
                        mov              [rsp + 848], rdx
                        mov              [rsp + 856], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 816], 0
                        mov              qword ptr [rsp + 824], rsp
proc_SUB_α_body:
# SUB     p1 = DRF(S[sp])
# IR_VAR
xchain81_n0_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   xchain81_n1_α
# IR_VAR
xchain81_n1_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   xchain81_n3_α
#         sp = sp - 1
# IR_VAR
xchain81_n2_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   xchain81_n4_α
# IR_SUBSCRIPT x[i] variable
xchain81_n3_α:
                        mov              rdi, qword ptr [rbp + 160]
                        mov              rsi, qword ptr [rbp + 168]
                        mov              rdx, qword ptr [rbp + 192]
                        mov              rcx, qword ptr [rbp + 200]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain81_n2_α
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   xchain81_n6_α
# IR_LIT_INTEGER
xchain81_n4_α:
                        mov              qword ptr [rbp + 352], 6
                        mov              rax, qword ptr [rip + .Lx86_0]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   xchain81_n7_α
.Lx86_0:
                        .quad            1
#         S[sp] = DRF(S[sp]) - p1
# IR_VAR
xchain81_n5_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   xchain81_n8_α
# IR_DEREF variable -> value
xchain81_n6_α:
                        mov              rdi, qword ptr [rbp + 224]
                        mov              rsi, qword ptr [rbp + 232]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    xchain81_n2_α
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   xchain81_n10_α
xchain81_n7_α:
# IR_BINOP_ARITH
                        mov              eax, dword ptr [rbp + 320]
                        cmp              eax, 100
                                                                                        je    .Lx89_0
                        mov              eax, dword ptr [rbp + 320]
                        cmp              eax, 6
                                                                                        jne   .Lx89_2
.Lx89_1:
                        mov              rax, qword ptr [rbp + 328]
                        mov              rcx, 1
                        sub              rax, rcx
                        mov              qword ptr [rbp + 288], 6
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   xchain81_n11_α
.Lx89_0:
                        mov              rdi, qword ptr [rbp + 320]
                        mov              rsi, qword ptr [rbp + 328]
                        mov              rdx, qword ptr [rbp + 352]
                        mov              rcx, qword ptr [rbp + 360]
                        mov              r8d, 1
                        lea              r9, [rbp + 288]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   xchain81_n11_α
.Lx89_2:
                        mov              rdi, qword ptr [rbp + 320]
                        mov              rsi, qword ptr [rbp + 328]
                        mov              rdx, qword ptr [rbp + 352]
                        mov              rcx, qword ptr [rbp + 360]
                        mov              r8d, 1
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    xchain81_n5_α
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   xchain81_n11_α
xchain81_n7_β:
                                                                                        jmp   xchain81_n5_α
# IR_VAR
xchain81_n8_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   xchain81_n12_α
#         SUB = .dm                               :(NRETURN)
# IR_LIT_STRING
xchain81_n9_α:
                        mov              qword ptr [rbp + 784], 1
                        mov              rax, qword ptr [rip + .Lx91_0]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   xchain81_n13_α
.Lx91_0:
                        .quad            .Lx91_0_s
.Lx91_0_s:
                        .string          "dm"
xchain81_n10_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052336]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx93_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx93_5
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx93_6]
                        lea              rdx, [rip + .Lx93_7]
                                                                                        jmp   rax
.Lx93_6:
                        mov              rdi, qword ptr [1879052320]
                        mov              rsi, qword ptr [1879052328]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052344], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx93_2
.Lx93_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052344], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx93_2
.Lx93_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx93_20
                        mov              rax, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx93_21
.Lx93_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        call             rt_arg_stage@PLT
.Lx93_21:
                        mov              rdi, qword ptr [rip + .Lx93_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx93_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx93_3]
                        lea              rdx, [rip + .Lx93_4]
                                                                                        jmp   rax
.Lx93_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx93_2
.Lx93_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx93_2
.Lx93_1:
                        call             rt_faildescr@PLT
.Lx93_2:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    xchain81_n2_α
                                                                                        jmp   xchain81_n14_α
xchain81_n10_β:
                                                                                        jmp   xchain81_n2_α
.Lx93_0:
                        .quad            .Lx93_0_s
.Lx93_0_s:
                        .string          "DRF"
# IR_ASSIGN gva
xchain81_n11_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        mov              qword ptr [1879052464], rax
                        mov              qword ptr [1879052472], rdx
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   xchain81_n5_α
# IR_SUBSCRIPT x[i] variable
xchain81_n12_α:
                        mov              rdi, qword ptr [rbp + 384]
                        mov              rsi, qword ptr [rbp + 392]
                        mov              rdx, qword ptr [rbp + 416]
                        mov              rcx, qword ptr [rbp + 424]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain81_n9_α
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   xchain81_n15_α
xchain81_n13_α:
# BOX IR_CALL SNO$NAME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+784] -> [zr+752]
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 760], rax
                        .section         .rodata
.Lrkfn97:               .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn97]
                        lea              rsi, [rbp + 752]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        cmp              eax, 99
                                                                                        je    xchain81_n17_α
                                                                                        jmp   xchain81_n16_α
xchain81_n13_β:
                                                                                        jmp   xchain81_n17_α
# IR_ASSIGN gva
xchain81_n14_α:
                        mov              rax, qword ptr [rbp + 112]
                        mov              rdx, qword ptr [rbp + 120]
                        mov              qword ptr [1879052368], rax
                        mov              qword ptr [1879052376], rdx
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   xchain81_n2_α
# IR_VAR
xchain81_n15_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   xchain81_n18_α
# IR_ASSIGN gva
xchain81_n16_α:
                        mov              rax, qword ptr [rbp + 736]
                        mov              rdx, qword ptr [rbp + 744]
                        mov              qword ptr [1879052384], rax
                        mov              qword ptr [1879052392], rdx
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                                                                                        jmp   xchain81_n17_α
# IR_LIT_STRING
xchain81_n17_α:
                        mov              qword ptr [rbp + 16], 1
                        mov              rax, qword ptr [rip + .Lx101_0]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   xchain81_n19_α
.Lx101_0:
                        .quad            .Lx101_0_s
.Lx101_0_s:
                        .string          ""
# IR_VAR
xchain81_n18_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   xchain81_n20_α
xchain81_n19_α:
# BOX IR_CALL SNO$NRET(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+16] -> [zr+64]
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 72], rax
                        .section         .rodata
.Lrkfn104:              .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn104]
                        lea              rsi, [rbp + 64]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_SUB_ω
                                                                                        jmp   proc_SUB_γ
xchain81_n19_β:
                                                                                        jmp   proc_SUB_ω
# IR_SUBSCRIPT x[i] variable
xchain81_n20_α:
                        mov              rdi, qword ptr [rbp + 560]
                        mov              rsi, qword ptr [rbp + 568]
                        mov              rdx, qword ptr [rbp + 592]
                        mov              rcx, qword ptr [rbp + 600]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain81_n9_α
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                                                                                        jmp   xchain81_n21_α
# IR_DEREF variable -> value
xchain81_n21_α:
                        mov              rdi, qword ptr [rbp + 624]
                        mov              rsi, qword ptr [rbp + 632]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    xchain81_n9_α
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   xchain81_n22_α
xchain81_n22_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052336]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx108_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx108_5
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx108_6]
                        lea              rdx, [rip + .Lx108_7]
                                                                                        jmp   rax
.Lx108_6:
                        mov              rdi, qword ptr [1879052320]
                        mov              rsi, qword ptr [1879052328]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052344], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx108_2
.Lx108_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052344], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx108_2
.Lx108_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx108_20
                        mov              rax, qword ptr [rbp + 656]
                        mov              rdx, qword ptr [rbp + 664]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx108_21
.Lx108_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 656]
                        mov              rdx, qword ptr [rbp + 664]
                        call             rt_arg_stage@PLT
.Lx108_21:
                        mov              rdi, qword ptr [rip + .Lx108_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx108_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx108_3]
                        lea              rdx, [rip + .Lx108_4]
                                                                                        jmp   rax
.Lx108_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx108_2
.Lx108_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx108_2
.Lx108_1:
                        call             rt_faildescr@PLT
.Lx108_2:
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              eax, 99
                                                                                        je    xchain81_n9_α
                                                                                        jmp   xchain81_n23_α
xchain81_n22_β:
                                                                                        jmp   xchain81_n9_α
.Lx108_0:
                        .quad            .Lx108_0_s
.Lx108_0_s:
                        .string          "DRF"
# IR_VAR
xchain81_n23_α:
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   xchain81_n24_α
xchain81_n24_α:
# IR_BINOP_ARITH
                        mov              eax, dword ptr [rbp + 512]
                        cmp              eax, 100
                                                                                        je    .Lx110_0
                        mov              eax, dword ptr [rbp + 672]
                        cmp              eax, 100
                                                                                        je    .Lx110_0
                        mov              eax, dword ptr [rbp + 512]
                        cmp              eax, 6
                                                                                        jne   .Lx110_2
                        mov              eax, dword ptr [rbp + 672]
                        cmp              eax, 6
                                                                                        jne   .Lx110_2
.Lx110_1:
                        mov              rax, qword ptr [rbp + 520]
                        mov              rcx, qword ptr [rbp + 680]
                        sub              rax, rcx
                        mov              qword ptr [rbp + 480], 6
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   xchain81_n25_α
.Lx110_0:
                        mov              rdi, qword ptr [rbp + 512]
                        mov              rsi, qword ptr [rbp + 520]
                        mov              rdx, qword ptr [rbp + 672]
                        mov              rcx, qword ptr [rbp + 680]
                        mov              r8d, 1
                        lea              r9, [rbp + 480]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   xchain81_n25_α
.Lx110_2:
                        mov              rdi, qword ptr [rbp + 512]
                        mov              rsi, qword ptr [rbp + 520]
                        mov              rdx, qword ptr [rbp + 672]
                        mov              rcx, qword ptr [rbp + 680]
                        mov              r8d, 1
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    xchain81_n9_α
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   xchain81_n25_α
xchain81_n24_β:
                                                                                        jmp   xchain81_n9_α
# IR_ASSIGN_VAR
xchain81_n25_α:
                        mov              rdi, qword ptr [rbp + 448]
                        mov              rsi, qword ptr [rbp + 456]
                        mov              rdx, qword ptr [rbp + 480]
                        mov              rcx, qword ptr [rbp + 488]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain81_n9_α
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                                                                                        jmp   xchain81_n9_α
proc_SUB_res:
                        add              rsp, 8
                        pop              rbp
proc_SUB_β:
                                                                                        jmp   proc_SUB_ω
proc_SUB_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 840]
                        lea              rsp, [rbp + 864]
                        mov              rbp, [rbp + 856]
                                                                                        jmp   rax
proc_SUB_ω:
                        mov              rax, [rbp + 848]
                        lea              rsp, [rbp + 864]
                        mov              rbp, [rbp + 856]
                                                                                        jmp   rax
                        .globl           proc_MUL_α
proc_MUL_α:
#=======================================================================================================================
                        .global          proc_MUL_α
                        .global          proc_MUL_β
                        .global          proc_MUL_γ
                        .global          proc_MUL_ω
                        sub              rsp, 864
                        mov              [rsp + 840], rcx
                        mov              [rsp + 848], rdx
                        mov              [rsp + 856], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 816], 0
                        mov              qword ptr [rsp + 824], rsp
proc_MUL_α_body:
# MUL     p1 = DRF(S[sp])
# IR_VAR
xchain112_n0_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   xchain112_n1_α
# IR_VAR
xchain112_n1_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   xchain112_n3_α
#         sp = sp - 1
# IR_VAR
xchain112_n2_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   xchain112_n4_α
# IR_SUBSCRIPT x[i] variable
xchain112_n3_α:
                        mov              rdi, qword ptr [rbp + 160]
                        mov              rsi, qword ptr [rbp + 168]
                        mov              rdx, qword ptr [rbp + 192]
                        mov              rcx, qword ptr [rbp + 200]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain112_n2_α
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   xchain112_n6_α
# IR_LIT_INTEGER
xchain112_n4_α:
                        mov              qword ptr [rbp + 352], 6
                        mov              rax, qword ptr [rip + .Lx117_0]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   xchain112_n7_α
.Lx117_0:
                        .quad            1
#         S[sp] = DRF(S[sp]) * p1
# IR_VAR
xchain112_n5_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   xchain112_n8_α
# IR_DEREF variable -> value
xchain112_n6_α:
                        mov              rdi, qword ptr [rbp + 224]
                        mov              rsi, qword ptr [rbp + 232]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    xchain112_n2_α
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   xchain112_n10_α
xchain112_n7_α:
# IR_BINOP_ARITH
                        mov              eax, dword ptr [rbp + 320]
                        cmp              eax, 100
                                                                                        je    .Lx120_0
                        mov              eax, dword ptr [rbp + 320]
                        cmp              eax, 6
                                                                                        jne   .Lx120_2
.Lx120_1:
                        mov              rax, qword ptr [rbp + 328]
                        mov              rcx, 1
                        sub              rax, rcx
                        mov              qword ptr [rbp + 288], 6
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   xchain112_n11_α
.Lx120_0:
                        mov              rdi, qword ptr [rbp + 320]
                        mov              rsi, qword ptr [rbp + 328]
                        mov              rdx, qword ptr [rbp + 352]
                        mov              rcx, qword ptr [rbp + 360]
                        mov              r8d, 1
                        lea              r9, [rbp + 288]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   xchain112_n11_α
.Lx120_2:
                        mov              rdi, qword ptr [rbp + 320]
                        mov              rsi, qword ptr [rbp + 328]
                        mov              rdx, qword ptr [rbp + 352]
                        mov              rcx, qword ptr [rbp + 360]
                        mov              r8d, 1
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    xchain112_n5_α
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   xchain112_n11_α
xchain112_n7_β:
                                                                                        jmp   xchain112_n5_α
# IR_VAR
xchain112_n8_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   xchain112_n12_α
#         MUL = .dm                               :(NRETURN)
# IR_LIT_STRING
xchain112_n9_α:
                        mov              qword ptr [rbp + 784], 1
                        mov              rax, qword ptr [rip + .Lx122_0]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   xchain112_n13_α
.Lx122_0:
                        .quad            .Lx122_0_s
.Lx122_0_s:
                        .string          "dm"
xchain112_n10_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052336]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx124_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx124_5
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx124_6]
                        lea              rdx, [rip + .Lx124_7]
                                                                                        jmp   rax
.Lx124_6:
                        mov              rdi, qword ptr [1879052320]
                        mov              rsi, qword ptr [1879052328]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052344], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx124_2
.Lx124_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052344], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx124_2
.Lx124_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx124_20
                        mov              rax, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx124_21
.Lx124_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        call             rt_arg_stage@PLT
.Lx124_21:
                        mov              rdi, qword ptr [rip + .Lx124_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx124_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx124_3]
                        lea              rdx, [rip + .Lx124_4]
                                                                                        jmp   rax
.Lx124_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx124_2
.Lx124_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx124_2
.Lx124_1:
                        call             rt_faildescr@PLT
.Lx124_2:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    xchain112_n2_α
                                                                                        jmp   xchain112_n14_α
xchain112_n10_β:
                                                                                        jmp   xchain112_n2_α
.Lx124_0:
                        .quad            .Lx124_0_s
.Lx124_0_s:
                        .string          "DRF"
# IR_ASSIGN gva
xchain112_n11_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        mov              qword ptr [1879052464], rax
                        mov              qword ptr [1879052472], rdx
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   xchain112_n5_α
# IR_SUBSCRIPT x[i] variable
xchain112_n12_α:
                        mov              rdi, qword ptr [rbp + 384]
                        mov              rsi, qword ptr [rbp + 392]
                        mov              rdx, qword ptr [rbp + 416]
                        mov              rcx, qword ptr [rbp + 424]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain112_n9_α
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   xchain112_n15_α
xchain112_n13_α:
# BOX IR_CALL SNO$NAME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+784] -> [zr+752]
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 760], rax
                        .section         .rodata
.Lrkfn128:              .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn128]
                        lea              rsi, [rbp + 752]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        cmp              eax, 99
                                                                                        je    xchain112_n17_α
                                                                                        jmp   xchain112_n16_α
xchain112_n13_β:
                                                                                        jmp   xchain112_n17_α
# IR_ASSIGN gva
xchain112_n14_α:
                        mov              rax, qword ptr [rbp + 112]
                        mov              rdx, qword ptr [rbp + 120]
                        mov              qword ptr [1879052368], rax
                        mov              qword ptr [1879052376], rdx
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   xchain112_n2_α
# IR_VAR
xchain112_n15_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   xchain112_n18_α
# IR_ASSIGN gva
xchain112_n16_α:
                        mov              rax, qword ptr [rbp + 736]
                        mov              rdx, qword ptr [rbp + 744]
                        mov              qword ptr [1879052400], rax
                        mov              qword ptr [1879052408], rdx
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                                                                                        jmp   xchain112_n17_α
# IR_LIT_STRING
xchain112_n17_α:
                        mov              qword ptr [rbp + 16], 1
                        mov              rax, qword ptr [rip + .Lx132_0]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   xchain112_n19_α
.Lx132_0:
                        .quad            .Lx132_0_s
.Lx132_0_s:
                        .string          ""
# IR_VAR
xchain112_n18_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   xchain112_n20_α
xchain112_n19_α:
# BOX IR_CALL SNO$NRET(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+16] -> [zr+64]
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 72], rax
                        .section         .rodata
.Lrkfn135:              .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn135]
                        lea              rsi, [rbp + 64]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_MUL_ω
                                                                                        jmp   proc_MUL_γ
xchain112_n19_β:
                                                                                        jmp   proc_MUL_ω
# IR_SUBSCRIPT x[i] variable
xchain112_n20_α:
                        mov              rdi, qword ptr [rbp + 560]
                        mov              rsi, qword ptr [rbp + 568]
                        mov              rdx, qword ptr [rbp + 592]
                        mov              rcx, qword ptr [rbp + 600]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain112_n9_α
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                                                                                        jmp   xchain112_n21_α
# IR_DEREF variable -> value
xchain112_n21_α:
                        mov              rdi, qword ptr [rbp + 624]
                        mov              rsi, qword ptr [rbp + 632]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    xchain112_n9_α
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   xchain112_n22_α
xchain112_n22_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052336]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx139_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx139_5
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx139_6]
                        lea              rdx, [rip + .Lx139_7]
                                                                                        jmp   rax
.Lx139_6:
                        mov              rdi, qword ptr [1879052320]
                        mov              rsi, qword ptr [1879052328]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052344], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx139_2
.Lx139_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052344], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx139_2
.Lx139_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx139_20
                        mov              rax, qword ptr [rbp + 656]
                        mov              rdx, qword ptr [rbp + 664]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx139_21
.Lx139_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 656]
                        mov              rdx, qword ptr [rbp + 664]
                        call             rt_arg_stage@PLT
.Lx139_21:
                        mov              rdi, qword ptr [rip + .Lx139_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx139_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx139_3]
                        lea              rdx, [rip + .Lx139_4]
                                                                                        jmp   rax
.Lx139_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx139_2
.Lx139_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx139_2
.Lx139_1:
                        call             rt_faildescr@PLT
.Lx139_2:
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              eax, 99
                                                                                        je    xchain112_n9_α
                                                                                        jmp   xchain112_n23_α
xchain112_n22_β:
                                                                                        jmp   xchain112_n9_α
.Lx139_0:
                        .quad            .Lx139_0_s
.Lx139_0_s:
                        .string          "DRF"
# IR_VAR
xchain112_n23_α:
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   xchain112_n24_α
xchain112_n24_α:
# IR_BINOP_ARITH
                        mov              eax, dword ptr [rbp + 512]
                        cmp              eax, 100
                                                                                        je    .Lx141_0
                        mov              eax, dword ptr [rbp + 672]
                        cmp              eax, 100
                                                                                        je    .Lx141_0
                        mov              eax, dword ptr [rbp + 512]
                        cmp              eax, 6
                                                                                        jne   .Lx141_2
                        mov              eax, dword ptr [rbp + 672]
                        cmp              eax, 6
                                                                                        jne   .Lx141_2
.Lx141_1:
                        mov              rax, qword ptr [rbp + 520]
                        mov              rcx, qword ptr [rbp + 680]
                        imul             rax, rcx
                        mov              qword ptr [rbp + 480], 6
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   xchain112_n25_α
.Lx141_0:
                        mov              rdi, qword ptr [rbp + 512]
                        mov              rsi, qword ptr [rbp + 520]
                        mov              rdx, qword ptr [rbp + 672]
                        mov              rcx, qword ptr [rbp + 680]
                        mov              r8d, 2
                        lea              r9, [rbp + 480]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   xchain112_n25_α
.Lx141_2:
                        mov              rdi, qword ptr [rbp + 512]
                        mov              rsi, qword ptr [rbp + 520]
                        mov              rdx, qword ptr [rbp + 672]
                        mov              rcx, qword ptr [rbp + 680]
                        mov              r8d, 2
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    xchain112_n9_α
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   xchain112_n25_α
xchain112_n24_β:
                                                                                        jmp   xchain112_n9_α
# IR_ASSIGN_VAR
xchain112_n25_α:
                        mov              rdi, qword ptr [rbp + 448]
                        mov              rsi, qword ptr [rbp + 456]
                        mov              rdx, qword ptr [rbp + 480]
                        mov              rcx, qword ptr [rbp + 488]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain112_n9_α
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                                                                                        jmp   xchain112_n9_α
proc_MUL_res:
                        add              rsp, 8
                        pop              rbp
proc_MUL_β:
                                                                                        jmp   proc_MUL_ω
proc_MUL_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 840]
                        lea              rsp, [rbp + 864]
                        mov              rbp, [rbp + 856]
                                                                                        jmp   rax
proc_MUL_ω:
                        mov              rax, [rbp + 848]
                        lea              rsp, [rbp + 864]
                        mov              rbp, [rbp + 856]
                                                                                        jmp   rax
                        .globl           proc_DIV_α
proc_DIV_α:
#=======================================================================================================================
                        .global          proc_DIV_α
                        .global          proc_DIV_β
                        .global          proc_DIV_γ
                        .global          proc_DIV_ω
                        sub              rsp, 864
                        mov              [rsp + 840], rcx
                        mov              [rsp + 848], rdx
                        mov              [rsp + 856], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 816], 0
                        mov              qword ptr [rsp + 824], rsp
proc_DIV_α_body:
# DIV     p1 = DRF(S[sp])
# IR_VAR
xchain143_n0_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   xchain143_n1_α
# IR_VAR
xchain143_n1_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   xchain143_n3_α
#         sp = sp - 1
# IR_VAR
xchain143_n2_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   xchain143_n4_α
# IR_SUBSCRIPT x[i] variable
xchain143_n3_α:
                        mov              rdi, qword ptr [rbp + 160]
                        mov              rsi, qword ptr [rbp + 168]
                        mov              rdx, qword ptr [rbp + 192]
                        mov              rcx, qword ptr [rbp + 200]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain143_n2_α
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   xchain143_n6_α
# IR_LIT_INTEGER
xchain143_n4_α:
                        mov              qword ptr [rbp + 352], 6
                        mov              rax, qword ptr [rip + .Lx148_0]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   xchain143_n7_α
.Lx148_0:
                        .quad            1
#         S[sp] = DRF(S[sp]) / p1
# IR_VAR
xchain143_n5_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   xchain143_n8_α
# IR_DEREF variable -> value
xchain143_n6_α:
                        mov              rdi, qword ptr [rbp + 224]
                        mov              rsi, qword ptr [rbp + 232]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    xchain143_n2_α
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   xchain143_n10_α
xchain143_n7_α:
# IR_BINOP_ARITH
                        mov              eax, dword ptr [rbp + 320]
                        cmp              eax, 100
                                                                                        je    .Lx151_0
                        mov              eax, dword ptr [rbp + 320]
                        cmp              eax, 6
                                                                                        jne   .Lx151_2
.Lx151_1:
                        mov              rax, qword ptr [rbp + 328]
                        mov              rcx, 1
                        sub              rax, rcx
                        mov              qword ptr [rbp + 288], 6
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   xchain143_n11_α
.Lx151_0:
                        mov              rdi, qword ptr [rbp + 320]
                        mov              rsi, qword ptr [rbp + 328]
                        mov              rdx, qword ptr [rbp + 352]
                        mov              rcx, qword ptr [rbp + 360]
                        mov              r8d, 1
                        lea              r9, [rbp + 288]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   xchain143_n11_α
.Lx151_2:
                        mov              rdi, qword ptr [rbp + 320]
                        mov              rsi, qword ptr [rbp + 328]
                        mov              rdx, qword ptr [rbp + 352]
                        mov              rcx, qword ptr [rbp + 360]
                        mov              r8d, 1
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    xchain143_n5_α
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   xchain143_n11_α
xchain143_n7_β:
                                                                                        jmp   xchain143_n5_α
# IR_VAR
xchain143_n8_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   xchain143_n12_α
#         DIV = .dm                               :(NRETURN)
# IR_LIT_STRING
xchain143_n9_α:
                        mov              qword ptr [rbp + 784], 1
                        mov              rax, qword ptr [rip + .Lx153_0]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   xchain143_n13_α
.Lx153_0:
                        .quad            .Lx153_0_s
.Lx153_0_s:
                        .string          "dm"
xchain143_n10_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052336]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx155_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx155_5
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx155_6]
                        lea              rdx, [rip + .Lx155_7]
                                                                                        jmp   rax
.Lx155_6:
                        mov              rdi, qword ptr [1879052320]
                        mov              rsi, qword ptr [1879052328]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052344], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx155_2
.Lx155_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052344], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx155_2
.Lx155_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx155_20
                        mov              rax, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx155_21
.Lx155_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        call             rt_arg_stage@PLT
.Lx155_21:
                        mov              rdi, qword ptr [rip + .Lx155_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx155_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx155_3]
                        lea              rdx, [rip + .Lx155_4]
                                                                                        jmp   rax
.Lx155_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx155_2
.Lx155_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx155_2
.Lx155_1:
                        call             rt_faildescr@PLT
.Lx155_2:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    xchain143_n2_α
                                                                                        jmp   xchain143_n14_α
xchain143_n10_β:
                                                                                        jmp   xchain143_n2_α
.Lx155_0:
                        .quad            .Lx155_0_s
.Lx155_0_s:
                        .string          "DRF"
# IR_ASSIGN gva
xchain143_n11_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        mov              qword ptr [1879052464], rax
                        mov              qword ptr [1879052472], rdx
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   xchain143_n5_α
# IR_SUBSCRIPT x[i] variable
xchain143_n12_α:
                        mov              rdi, qword ptr [rbp + 384]
                        mov              rsi, qword ptr [rbp + 392]
                        mov              rdx, qword ptr [rbp + 416]
                        mov              rcx, qword ptr [rbp + 424]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain143_n9_α
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   xchain143_n15_α
xchain143_n13_α:
# BOX IR_CALL SNO$NAME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+784] -> [zr+752]
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 760], rax
                        .section         .rodata
.Lrkfn159:              .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn159]
                        lea              rsi, [rbp + 752]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        cmp              eax, 99
                                                                                        je    xchain143_n17_α
                                                                                        jmp   xchain143_n16_α
xchain143_n13_β:
                                                                                        jmp   xchain143_n17_α
# IR_ASSIGN gva
xchain143_n14_α:
                        mov              rax, qword ptr [rbp + 112]
                        mov              rdx, qword ptr [rbp + 120]
                        mov              qword ptr [1879052368], rax
                        mov              qword ptr [1879052376], rdx
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   xchain143_n2_α
# IR_VAR
xchain143_n15_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   xchain143_n18_α
# IR_ASSIGN gva
xchain143_n16_α:
                        mov              rax, qword ptr [rbp + 736]
                        mov              rdx, qword ptr [rbp + 744]
                        mov              qword ptr [1879052416], rax
                        mov              qword ptr [1879052424], rdx
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                                                                                        jmp   xchain143_n17_α
# IR_LIT_STRING
xchain143_n17_α:
                        mov              qword ptr [rbp + 16], 1
                        mov              rax, qword ptr [rip + .Lx163_0]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   xchain143_n19_α
.Lx163_0:
                        .quad            .Lx163_0_s
.Lx163_0_s:
                        .string          ""
# IR_VAR
xchain143_n18_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   xchain143_n20_α
xchain143_n19_α:
# BOX IR_CALL SNO$NRET(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+16] -> [zr+64]
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 72], rax
                        .section         .rodata
.Lrkfn166:              .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn166]
                        lea              rsi, [rbp + 64]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_DIV_ω
                                                                                        jmp   proc_DIV_γ
xchain143_n19_β:
                                                                                        jmp   proc_DIV_ω
# IR_SUBSCRIPT x[i] variable
xchain143_n20_α:
                        mov              rdi, qword ptr [rbp + 560]
                        mov              rsi, qword ptr [rbp + 568]
                        mov              rdx, qword ptr [rbp + 592]
                        mov              rcx, qword ptr [rbp + 600]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain143_n9_α
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                                                                                        jmp   xchain143_n21_α
# IR_DEREF variable -> value
xchain143_n21_α:
                        mov              rdi, qword ptr [rbp + 624]
                        mov              rsi, qword ptr [rbp + 632]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    xchain143_n9_α
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   xchain143_n22_α
xchain143_n22_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052336]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx170_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx170_5
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx170_6]
                        lea              rdx, [rip + .Lx170_7]
                                                                                        jmp   rax
.Lx170_6:
                        mov              rdi, qword ptr [1879052320]
                        mov              rsi, qword ptr [1879052328]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052344], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx170_2
.Lx170_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052344], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx170_2
.Lx170_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx170_20
                        mov              rax, qword ptr [rbp + 656]
                        mov              rdx, qword ptr [rbp + 664]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx170_21
.Lx170_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 656]
                        mov              rdx, qword ptr [rbp + 664]
                        call             rt_arg_stage@PLT
.Lx170_21:
                        mov              rdi, qword ptr [rip + .Lx170_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx170_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx170_3]
                        lea              rdx, [rip + .Lx170_4]
                                                                                        jmp   rax
.Lx170_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx170_2
.Lx170_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx170_2
.Lx170_1:
                        call             rt_faildescr@PLT
.Lx170_2:
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              eax, 99
                                                                                        je    xchain143_n9_α
                                                                                        jmp   xchain143_n23_α
xchain143_n22_β:
                                                                                        jmp   xchain143_n9_α
.Lx170_0:
                        .quad            .Lx170_0_s
.Lx170_0_s:
                        .string          "DRF"
# IR_VAR
xchain143_n23_α:
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   xchain143_n24_α
xchain143_n24_α:
# IR_BINOP_ARITH
                        mov              eax, dword ptr [rbp + 512]
                        cmp              eax, 100
                                                                                        je    .Lx172_0
                        mov              eax, dword ptr [rbp + 672]
                        cmp              eax, 100
                                                                                        je    .Lx172_0
                        mov              eax, dword ptr [rbp + 512]
                        cmp              eax, 6
                                                                                        jne   .Lx172_2
                        mov              eax, dword ptr [rbp + 672]
                        cmp              eax, 6
                                                                                        jne   .Lx172_2
.Lx172_1:
                        mov              rax, qword ptr [rbp + 520]
                        mov              rcx, qword ptr [rbp + 680]
                        cqo
                        idiv             rcx
                        mov              qword ptr [rbp + 480], 6
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   xchain143_n25_α
.Lx172_0:
                        mov              rdi, qword ptr [rbp + 512]
                        mov              rsi, qword ptr [rbp + 520]
                        mov              rdx, qword ptr [rbp + 672]
                        mov              rcx, qword ptr [rbp + 680]
                        mov              r8d, 3
                        lea              r9, [rbp + 480]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   xchain143_n25_α
.Lx172_2:
                        mov              rdi, qword ptr [rbp + 512]
                        mov              rsi, qword ptr [rbp + 520]
                        mov              rdx, qword ptr [rbp + 672]
                        mov              rcx, qword ptr [rbp + 680]
                        mov              r8d, 3
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    xchain143_n9_α
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   xchain143_n25_α
xchain143_n24_β:
                                                                                        jmp   xchain143_n9_α
# IR_ASSIGN_VAR
xchain143_n25_α:
                        mov              rdi, qword ptr [rbp + 448]
                        mov              rsi, qword ptr [rbp + 456]
                        mov              rdx, qword ptr [rbp + 480]
                        mov              rcx, qword ptr [rbp + 488]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain143_n9_α
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                                                                                        jmp   xchain143_n9_α
proc_DIV_res:
                        add              rsp, 8
                        pop              rbp
proc_DIV_β:
                                                                                        jmp   proc_DIV_ω
proc_DIV_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 840]
                        lea              rsp, [rbp + 864]
                        mov              rbp, [rbp + 856]
                                                                                        jmp   rax
proc_DIV_ω:
                        mov              rax, [rbp + 848]
                        lea              rsp, [rbp + 864]
                        mov              rbp, [rbp + 856]
                                                                                        jmp   rax
                        .globl           proc_NEG_α
proc_NEG_α:
#=======================================================================================================================
                        .global          proc_NEG_α
                        .global          proc_NEG_β
                        .global          proc_NEG_γ
                        .global          proc_NEG_ω
                        sub              rsp, 544
                        mov              [rsp + 520], rcx
                        mov              [rsp + 528], rdx
                        mov              [rsp + 536], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 496], 0
                        mov              qword ptr [rsp + 504], rsp
proc_NEG_α_body:
# NEG     S[sp] = -DRF(S[sp])
# IR_VAR
xchain174_n0_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   xchain174_n1_α
# IR_VAR
xchain174_n1_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                                                                                        jmp   xchain174_n3_α
#         NEG = .dm                               :(NRETURN)
# IR_LIT_STRING
xchain174_n2_α:
                        mov              qword ptr [rbp + 464], 1
                        mov              rax, qword ptr [rip + .Lx177_0]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   xchain174_n4_α
.Lx177_0:
                        .quad            .Lx177_0_s
.Lx177_0_s:
                        .string          "dm"
# IR_SUBSCRIPT x[i] variable
xchain174_n3_α:
                        mov              rdi, qword ptr [rbp + 96]
                        mov              rsi, qword ptr [rbp + 104]
                        mov              rdx, qword ptr [rbp + 128]
                        mov              rcx, qword ptr [rbp + 136]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain174_n2_α
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   xchain174_n5_α
xchain174_n4_α:
# BOX IR_CALL SNO$NAME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+464] -> [zr+432]
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 440], rax
                        .section         .rodata
.Lrkfn180:              .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn180]
                        lea              rsi, [rbp + 432]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              eax, 99
                                                                                        je    xchain174_n7_α
                                                                                        jmp   xchain174_n6_α
xchain174_n4_β:
                                                                                        jmp   xchain174_n7_α
# IR_VAR
xchain174_n5_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   xchain174_n8_α
# IR_ASSIGN gva
xchain174_n6_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              rdx, qword ptr [rbp + 424]
                        mov              qword ptr [1879052432], rax
                        mov              qword ptr [1879052440], rdx
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   xchain174_n7_α
# IR_LIT_STRING
xchain174_n7_α:
                        mov              qword ptr [rbp + 16], 1
                        mov              rax, qword ptr [rip + .Lx183_0]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   xchain174_n9_α
.Lx183_0:
                        .quad            .Lx183_0_s
.Lx183_0_s:
                        .string          ""
# IR_VAR
xchain174_n8_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   xchain174_n10_α
xchain174_n9_α:
# BOX IR_CALL SNO$NRET(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+16] -> [zr+64]
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 72], rax
                        .section         .rodata
.Lrkfn186:              .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn186]
                        lea              rsi, [rbp + 64]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_NEG_ω
                                                                                        jmp   proc_NEG_γ
xchain174_n9_β:
                                                                                        jmp   proc_NEG_ω
# IR_SUBSCRIPT x[i] variable
xchain174_n10_α:
                        mov              rdi, qword ptr [rbp + 272]
                        mov              rsi, qword ptr [rbp + 280]
                        mov              rdx, qword ptr [rbp + 304]
                        mov              rcx, qword ptr [rbp + 312]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain174_n2_α
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   xchain174_n11_α
# IR_DEREF variable -> value
xchain174_n11_α:
                        mov              rdi, qword ptr [rbp + 336]
                        mov              rsi, qword ptr [rbp + 344]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    xchain174_n2_α
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   xchain174_n12_α
xchain174_n12_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052336]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx190_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx190_5
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx190_6]
                        lea              rdx, [rip + .Lx190_7]
                                                                                        jmp   rax
.Lx190_6:
                        mov              rdi, qword ptr [1879052320]
                        mov              rsi, qword ptr [1879052328]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052344], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx190_2
.Lx190_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052344], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx190_2
.Lx190_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx190_20
                        mov              rax, qword ptr [rbp + 368]
                        mov              rdx, qword ptr [rbp + 376]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx190_21
.Lx190_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 368]
                        mov              rdx, qword ptr [rbp + 376]
                        call             rt_arg_stage@PLT
.Lx190_21:
                        mov              rdi, qword ptr [rip + .Lx190_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx190_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx190_3]
                        lea              rdx, [rip + .Lx190_4]
                                                                                        jmp   rax
.Lx190_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx190_2
.Lx190_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx190_2
.Lx190_1:
                        call             rt_faildescr@PLT
.Lx190_2:
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 99
                                                                                        je    xchain174_n2_α
                                                                                        jmp   xchain174_n13_α
xchain174_n12_β:
                                                                                        jmp   xchain174_n2_α
.Lx190_0:
                        .quad            .Lx190_0_s
.Lx190_0_s:
                        .string          "DRF"
# IR_UNOP
xchain174_n13_α:
                        mov              rdi, qword ptr [rbp + 224]
                        mov              rsi, qword ptr [rbp + 232]
                        call             rt_num_neg@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   xchain174_n14_α
# IR_ASSIGN_VAR
xchain174_n14_α:
                        mov              rdi, qword ptr [rbp + 160]
                        mov              rsi, qword ptr [rbp + 168]
                        mov              rdx, qword ptr [rbp + 192]
                        mov              rcx, qword ptr [rbp + 200]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain174_n2_α
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   xchain174_n2_α
proc_NEG_res:
                        add              rsp, 8
                        pop              rbp
proc_NEG_β:
                                                                                        jmp   proc_NEG_ω
proc_NEG_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 520]
                        lea              rsp, [rbp + 544]
                        mov              rbp, [rbp + 536]
                                                                                        jmp   rax
proc_NEG_ω:
                        mov              rax, [rbp + 528]
                        lea              rsp, [rbp + 544]
                        mov              rbp, [rbp + 536]
                                                                                        jmp   rax
                        .globl           proc_PAT$0_α
proc_PAT$0_α:
#=======================================================================================================================
                        .global          proc_PAT$0_α
                        .global          proc_PAT$0_β
                        .global          proc_PAT$0_γ
                        .global          proc_PAT$0_ω
                        sub              rsp, 144
                        mov              [rsp + 120], rcx
                        mov              [rsp + 128], rdx
                        mov              [rsp + 136], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 48], 0
                        mov              qword ptr [rsp + 56], 0
                        mov              qword ptr [rsp + 80], 0
                        mov              qword ptr [rsp + 88], 0
                        mov              qword ptr [rsp + 96], 0
                        mov              qword ptr [rsp + 104], rsp
                        mov              qword ptr [rbp + 112], r8
                        mov              dword ptr [rbp + 104], r14d
proc_PAT$0_attempt:
proc_PAT$0_α_body:
                        lea              rax, [rip + xchain193_n2_β]
                        mov              qword ptr [rbp + 80], rax
# IR_MATCH_CAPTURE_SAVE fc cell
xchain193_n0_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   xchain193_n1_α
xchain193_n0_β:
                        add              rsp, 16
                                                                                        jmp   proc_PAT$0_scanfail
# IR_MATCH_ANY
xchain193_n1_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jl    .Lx197_239
                        add              rsp, 16
                                                                                        jmp   proc_PAT$0_scanfail
.Lx197_239:
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C0]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        jne   .Lx197_240
                        add              rsp, 16
                                                                                        jmp   proc_PAT$0_scanfail
.Lx197_240:
                        add              r14d, 1
                                                                                        jmp   xchain193_n2_α
xchain193_n1_β:
                        sub              r14d, 1
                        add              rsp, 16
                                                                                        jmp   proc_PAT$0_scanfail
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
xchain193_n2_α:
                        mov              eax, dword ptr [rsp + 0]
                        lea              rcx, [rip + .S0]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   proc_PAT$0_scanhit
xchain193_n2_β:
                        sub              r12, 24
                                                                                        jmp   xchain193_n1_β
proc_PAT$0_scanhit:
                        cmp              qword ptr [rbp + 112], 1
                                                                                        jne   7f
                        mov              ecx, dword ptr [rbp + 104]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx], ecx
7:
                                                                                        jmp   proc_PAT$0_γ
proc_PAT$0_scanfail:
                        cmp              qword ptr [rbp + 112], 1
                                                                                        jne   8f
                        mov              eax, dword ptr [rbp + 104]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    8f
                        lea              rcx, [rip + g_anchor]
                        cmp              qword ptr [rcx], 0
                                                                                        jne   8f
                        mov              dword ptr [rbp + 104], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$0_attempt
8:
                                                                                        jmp   proc_PAT$0_ω
proc_PAT$0_res:
                        add              rsp, 8
                        pop              rbp
proc_PAT$0_β:
                                                                                        jmp   qword ptr [rbp + 80]
proc_PAT$0_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$0_res]
                        push             rax
                        mov              rax, [rbp + 120]
                        mov              rbp, [rbp + 136]
                                                                                        jmp   rax
proc_PAT$0_ω:
                        mov              rax, [rbp + 128]
                        lea              rsp, [rbp + 144]
                        mov              rbp, [rbp + 136]
                                                                                        jmp   rax
                        .globl           proc_PAT$1_α
proc_PAT$1_α:
#=======================================================================================================================
                        .global          proc_PAT$1_α
                        .global          proc_PAT$1_β
                        .global          proc_PAT$1_γ
                        .global          proc_PAT$1_ω
                        sub              rsp, 160
                        mov              [rsp + 136], rcx
                        mov              [rsp + 144], rdx
                        mov              [rsp + 152], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 48], 0
                        mov              qword ptr [rsp + 56], 0
                        mov              qword ptr [rsp + 96], 0
                        mov              qword ptr [rsp + 104], 0
                        mov              qword ptr [rsp + 112], 0
                        mov              qword ptr [rsp + 120], rsp
                        mov              qword ptr [rbp + 128], r8
                        mov              dword ptr [rbp + 120], r14d
proc_PAT$1_attempt:
proc_PAT$1_α_body:
                        lea              rax, [rip + xchain200_n2_β]
                        mov              qword ptr [rbp + 96], rax
# IR_MATCH_CAPTURE_SAVE fc cell
xchain200_n0_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   xchain200_n1_α
xchain200_n0_β:
                        add              rsp, 16
                                                                                        jmp   proc_PAT$1_scanfail
# IR_MATCH_SPAN
xchain200_n1_α:
                        sub              rsp, 16
                        lea              rdi, [rip + .C1]
                        movsxd           rcx, r14d
.Lx204_0:
                        cmp              ecx, r15d
                                                                                        jge   .Lx204_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx204_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx204_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx204_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx204_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx204_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx204_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx204_1
                        add              ecx, 1
                                                                                        jmp   .Lx204_0
.Lx204_1:
                        cmp              ecx, r14d
                                                                                        jg    .Lx204_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   proc_PAT$1_scanfail
.Lx204_240:
                        mov              dword ptr [rsp + 4], r14d
                        mov              r14d, ecx
                                                                                        jmp   xchain200_n2_α
xchain200_n1_β:
xchain200_n1_β:
                        mov              r14d, dword ptr [rsp + 4]
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   proc_PAT$1_scanfail
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
xchain200_n2_α:
                        mov              eax, dword ptr [rsp + 16]
                        lea              rcx, [rip + .S0]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   proc_PAT$1_scanhit
xchain200_n2_β:
                        sub              r12, 24
                                                                                        jmp   xchain200_n1_β
proc_PAT$1_scanhit:
                        cmp              qword ptr [rbp + 128], 1
                                                                                        jne   7f
                        mov              ecx, dword ptr [rbp + 120]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx], ecx
7:
                                                                                        jmp   proc_PAT$1_γ
proc_PAT$1_scanfail:
                        cmp              qword ptr [rbp + 128], 1
                                                                                        jne   8f
                        mov              eax, dword ptr [rbp + 120]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    8f
                        lea              rcx, [rip + g_anchor]
                        cmp              qword ptr [rcx], 0
                                                                                        jne   8f
                        mov              dword ptr [rbp + 120], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$1_attempt
8:
                                                                                        jmp   proc_PAT$1_ω
proc_PAT$1_res:
                        add              rsp, 8
                        pop              rbp
proc_PAT$1_β:
                                                                                        jmp   qword ptr [rbp + 96]
proc_PAT$1_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$1_res]
                        push             rax
                        mov              rax, [rbp + 136]
                        mov              rbp, [rbp + 152]
                                                                                        jmp   rax
proc_PAT$1_ω:
                        mov              rax, [rbp + 144]
                        lea              rsp, [rbp + 160]
                        mov              rbp, [rbp + 152]
                                                                                        jmp   rax
                        .globl           proc_PAT$2_α
proc_PAT$2_α:
#=======================================================================================================================
                        .global          proc_PAT$2_α
                        .global          proc_PAT$2_β
                        .global          proc_PAT$2_γ
                        .global          proc_PAT$2_ω
                        sub              rsp, 176
                        mov              [rsp + 152], rcx
                        mov              [rsp + 160], rdx
                        mov              [rsp + 168], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 112], 0
                        mov              qword ptr [rsp + 120], 0
                        mov              qword ptr [rsp + 128], 0
                        mov              qword ptr [rsp + 136], rsp
                        mov              qword ptr [rbp + 144], r8
                        mov              dword ptr [rbp + 136], r14d
proc_PAT$2_attempt:
proc_PAT$2_α_body:
                        lea              rax, [rip + xchain207_n0_β]
                        mov              qword ptr [rbp + 112], rax
# IR_MATCH_ALT_NARY
xchain207_n0_α:
                        mov              dword ptr [rbp + 16], r14d
                        mov              dword ptr [rbp + 20], 0
                                                                                        jmp   xchain207_n1_α
xchain207_n0_as:
                                                                                        jmp   proc_PAT$2_γ
xchain207_n0_β:
                        mov              eax, dword ptr [rbp + 20]
                        cmp              eax, 0
                                                                                        je    xchain207_n1_β
                        cmp              eax, 1
                                                                                        je    xchain207_n2_β
                                                                                        jmp   xchain207_n3_β
xchain207_n0_af:
                        add              dword ptr [rbp + 20], 1
                        mov              r14d, dword ptr [rbp + 16]
                        mov              eax, dword ptr [rbp + 20]
                        cmp              eax, 1
                                                                                        je    xchain207_n2_α
                        cmp              eax, 2
                                                                                        je    xchain207_n3_α
                                                                                        jmp   proc_PAT$2_ω
# IR_MATCH_DEFER (ZS-2 jmp-entry)
xchain207_n1_α:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx210_11
                        mov              rax, qword ptr [1879052544]
                        mov              rdx, qword ptr [1879052552]
                        cmp              eax, 3
                                                                                        jne   .Lx210_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx210_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx210_10
.Lx210_9:
                        xor              eax, eax
.Lx210_10:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              qword ptr [rsi + 0], rax
.Lx210_11:
                        test             rax, rax
                                                                                        jz    .Lx210_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx210_4]
                        lea              rdx, [rip + .Lx210_5]
                                                                                        jmp   rax
.Lx210_4:
                                                                                        jmp   xchain207_n0_as
.Lx210_5:
                                                                                        jmp   xchain207_n0_af
.Lx210_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx210_2:
                        test             rax, rax
                                                                                        je    .Lx210_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx210_7]
                        lea              rdx, [rip + .Lx210_8]
                                                                                        jmp   rax
.Lx210_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx210_2
.Lx210_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx210_2
.Lx210_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    xchain207_n0_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx210_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   xchain207_n0_as
.Lx210_6:
                        add              rsp, 16
                                                                                        jmp   xchain207_n0_af
xchain207_n1_β:
                                                                                        jmp   qword ptr [rsp]
# IR_MATCH_DEFER (ZS-2 jmp-entry)
xchain207_n2_α:
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx211_11
                        mov              rax, qword ptr [1879052560]
                        mov              rdx, qword ptr [1879052568]
                        cmp              eax, 3
                                                                                        jne   .Lx211_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx211_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx211_10
.Lx211_9:
                        xor              eax, eax
.Lx211_10:
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              qword ptr [rsi + 0], rax
.Lx211_11:
                        test             rax, rax
                                                                                        jz    .Lx211_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx211_4]
                        lea              rdx, [rip + .Lx211_5]
                                                                                        jmp   rax
.Lx211_4:
                                                                                        jmp   xchain207_n0_as
.Lx211_5:
                                                                                        jmp   xchain207_n0_af
.Lx211_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S2]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx211_2:
                        test             rax, rax
                                                                                        je    .Lx211_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx211_7]
                        lea              rdx, [rip + .Lx211_8]
                                                                                        jmp   rax
.Lx211_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx211_2
.Lx211_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx211_2
.Lx211_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    xchain207_n0_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx211_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   xchain207_n0_as
.Lx211_6:
                        add              rsp, 16
                                                                                        jmp   xchain207_n0_af
xchain207_n2_β:
                                                                                        jmp   qword ptr [rsp]
# IR_MATCH_SEQ_NARY (SPD SEQ-STATIC: zero-counter, sigma/phi statically wired)
xchain207_n3_α:
                        mov              dword ptr [rbp + 64], r14d
                                                                                        jmp   xchain207_n4_α
xchain207_n3_as:
                                                                                        jmp   xchain207_n0_as
xchain207_n3_β:
                                                                                        jmp   xchain207_n6_β
xchain207_n3_af:
                                                                                        jmp   xchain207_n0_af
# IR_MATCH_LIT
xchain207_n4_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    xchain207_n0_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 40
                                                                                        jne   xchain207_n0_af
                        add              r14d, 1
                                                                                        jmp   xchain207_n5_α
xchain207_n4_β:
                        sub              r14d, 1
                                                                                        jmp   xchain207_n0_af
# IR_MATCH_DEFER (ZS-2 jmp-entry)
xchain207_n5_α:
                        lea              rsi, [rip + g_sno_defer_cells+16]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx216_11
                        mov              rax, qword ptr [1879052624]
                        mov              rdx, qword ptr [1879052632]
                        cmp              eax, 3
                                                                                        jne   .Lx216_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx216_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx216_10
.Lx216_9:
                        xor              eax, eax
.Lx216_10:
                        lea              rsi, [rip + g_sno_defer_cells+16]
                        mov              qword ptr [rsi + 0], rax
.Lx216_11:
                        test             rax, rax
                                                                                        jz    .Lx216_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx216_4]
                        lea              rdx, [rip + .Lx216_5]
                                                                                        jmp   rax
.Lx216_4:
                                                                                        jmp   xchain207_n6_α
.Lx216_5:
                                                                                        jmp   xchain207_n4_β
.Lx216_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S3]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx216_2:
                        test             rax, rax
                                                                                        je    .Lx216_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx216_7]
                        lea              rdx, [rip + .Lx216_8]
                                                                                        jmp   rax
.Lx216_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx216_2
.Lx216_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx216_2
.Lx216_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    xchain207_n4_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx216_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   xchain207_n6_α
.Lx216_6:
                        add              rsp, 16
                                                                                        jmp   xchain207_n4_β
xchain207_n5_β:
                                                                                        jmp   qword ptr [rsp]
# IR_MATCH_LIT
xchain207_n6_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    xchain207_n5_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 41
                                                                                        jne   xchain207_n5_β
                        add              r14d, 1
                                                                                        jmp   xchain207_n0_as
xchain207_n6_β:
                        sub              r14d, 1
                                                                                        jmp   xchain207_n5_β
proc_PAT$2_scanhit:
                        cmp              qword ptr [rbp + 144], 1
                                                                                        jne   7f
                        mov              ecx, dword ptr [rbp + 136]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx], ecx
7:
                                                                                        jmp   proc_PAT$2_γ
proc_PAT$2_scanfail:
                        cmp              qword ptr [rbp + 144], 1
                                                                                        jne   8f
                        mov              eax, dword ptr [rbp + 136]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    8f
                        lea              rcx, [rip + g_anchor]
                        cmp              qword ptr [rcx], 0
                                                                                        jne   8f
                        mov              dword ptr [rbp + 136], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$2_attempt
8:
                                                                                        jmp   proc_PAT$2_ω
proc_PAT$2_res:
                        add              rsp, 8
                        pop              rbp
proc_PAT$2_β:
                                                                                        jmp   qword ptr [rbp + 112]
proc_PAT$2_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$2_res]
                        push             rax
                        mov              rax, [rbp + 152]
                        mov              rbp, [rbp + 168]
                                                                                        jmp   rax
proc_PAT$2_ω:
                        mov              rax, [rbp + 160]
                        lea              rsp, [rbp + 176]
                        mov              rbp, [rbp + 168]
                                                                                        jmp   rax
                        .globl           proc_PAT$3_α
proc_PAT$3_α:
#=======================================================================================================================
                        .global          proc_PAT$3_α
                        .global          proc_PAT$3_β
                        .global          proc_PAT$3_γ
                        .global          proc_PAT$3_ω
                        sub              rsp, 256
                        mov              [rsp + 232], rcx
                        mov              [rsp + 240], rdx
                        mov              [rsp + 248], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 144], 0
                        mov              qword ptr [rsp + 152], 0
                        mov              qword ptr [rsp + 192], 0
                        mov              qword ptr [rsp + 200], 0
                        mov              qword ptr [rsp + 208], 0
                        mov              qword ptr [rsp + 216], rsp
                        mov              qword ptr [rbp + 224], r8
                        mov              dword ptr [rbp + 216], r14d
proc_PAT$3_attempt:
proc_PAT$3_α_body:
                        lea              rax, [rip + xchain219_n0_β]
                        mov              qword ptr [rbp + 192], rax
# IR_MATCH_ALT_NARY
xchain219_n0_α:
                        mov              dword ptr [rbp + 16], r14d
                        mov              dword ptr [rbp + 20], 0
                                                                                        jmp   xchain219_n1_α
xchain219_n0_as:
                                                                                        jmp   proc_PAT$3_γ
xchain219_n0_β:
                        mov              eax, dword ptr [rbp + 20]
                        cmp              eax, 0
                                                                                        je    xchain219_n1_β
                        cmp              eax, 1
                                                                                        je    xchain219_n2_β
                                                                                        jmp   xchain219_n3_β
xchain219_n0_af:
                        add              dword ptr [rbp + 20], 1
                        mov              r14d, dword ptr [rbp + 16]
                        mov              eax, dword ptr [rbp + 20]
                        cmp              eax, 1
                                                                                        je    xchain219_n2_α
                        cmp              eax, 2
                                                                                        je    xchain219_n3_α
                                                                                        jmp   proc_PAT$3_ω
# IR_MATCH_DEFER (ZS-2 jmp-entry)
xchain219_n1_α:
                        lea              rsi, [rip + g_sno_defer_cells+24]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx222_11
                        mov              rax, qword ptr [1879052576]
                        mov              rdx, qword ptr [1879052584]
                        cmp              eax, 3
                                                                                        jne   .Lx222_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx222_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx222_10
.Lx222_9:
                        xor              eax, eax
.Lx222_10:
                        lea              rsi, [rip + g_sno_defer_cells+24]
                        mov              qword ptr [rsi + 0], rax
.Lx222_11:
                        test             rax, rax
                                                                                        jz    .Lx222_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx222_4]
                        lea              rdx, [rip + .Lx222_5]
                                                                                        jmp   rax
.Lx222_4:
                                                                                        jmp   xchain219_n0_as
.Lx222_5:
                                                                                        jmp   xchain219_n0_af
.Lx222_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S4]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx222_2:
                        test             rax, rax
                                                                                        je    .Lx222_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx222_7]
                        lea              rdx, [rip + .Lx222_8]
                                                                                        jmp   rax
.Lx222_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx222_2
.Lx222_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx222_2
.Lx222_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    xchain219_n0_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx222_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   xchain219_n0_as
.Lx222_6:
                        add              rsp, 16
                                                                                        jmp   xchain219_n0_af
xchain219_n1_β:
                                                                                        jmp   qword ptr [rsp]
# IR_MATCH_SEQ_NARY (SPD SEQ-STATIC: zero-counter, sigma/phi statically wired)
xchain219_n2_α:
                        mov              dword ptr [rbp + 48], r14d
                                                                                        jmp   xchain219_n4_α
xchain219_n2_as:
                                                                                        jmp   xchain219_n0_as
xchain219_n2_β:
                                                                                        jmp   xchain219_n5_β
xchain219_n2_af:
                                                                                        jmp   xchain219_n0_af
# IR_MATCH_SEQ_NARY (SPD SEQ-STATIC: zero-counter, sigma/phi statically wired)
xchain219_n3_α:
                        mov              dword ptr [rbp + 96], r14d
                                                                                        jmp   xchain219_n6_α
xchain219_n3_as:
                                                                                        jmp   xchain219_n0_as
xchain219_n3_β:
                                                                                        jmp   xchain219_n8_β
xchain219_n3_af:
                                                                                        jmp   xchain219_n0_af
# IR_MATCH_LIT
xchain219_n4_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    xchain219_n0_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 43
                                                                                        jne   xchain219_n0_af
                        add              r14d, 1
                                                                                        jmp   xchain219_n5_α
xchain219_n4_β:
                        sub              r14d, 1
                                                                                        jmp   xchain219_n0_af
# IR_MATCH_DEFER (ZS-2 jmp-entry)
xchain219_n5_α:
                        lea              rsi, [rip + g_sno_defer_cells+32]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx229_11
                        mov              rax, qword ptr [1879052592]
                        mov              rdx, qword ptr [1879052600]
                        cmp              eax, 3
                                                                                        jne   .Lx229_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx229_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx229_10
.Lx229_9:
                        xor              eax, eax
.Lx229_10:
                        lea              rsi, [rip + g_sno_defer_cells+32]
                        mov              qword ptr [rsi + 0], rax
.Lx229_11:
                        test             rax, rax
                                                                                        jz    .Lx229_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx229_4]
                        lea              rdx, [rip + .Lx229_5]
                                                                                        jmp   rax
.Lx229_4:
                                                                                        jmp   xchain219_n0_as
.Lx229_5:
                                                                                        jmp   xchain219_n4_β
.Lx229_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S5]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx229_2:
                        test             rax, rax
                                                                                        je    .Lx229_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx229_7]
                        lea              rdx, [rip + .Lx229_8]
                                                                                        jmp   rax
.Lx229_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx229_2
.Lx229_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx229_2
.Lx229_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    xchain219_n4_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx229_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   xchain219_n0_as
.Lx229_6:
                        add              rsp, 16
                                                                                        jmp   xchain219_n4_β
xchain219_n5_β:
                                                                                        jmp   qword ptr [rsp]
# IR_MATCH_LIT
xchain219_n6_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    xchain219_n0_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 45
                                                                                        jne   xchain219_n0_af
                        add              r14d, 1
                                                                                        jmp   xchain219_n7_α
xchain219_n6_β:
                        sub              r14d, 1
                                                                                        jmp   xchain219_n0_af
# IR_MATCH_CAPTURE_SAVE push
xchain219_n7_α:
                        lea              rdi, [rbp + 144]
                        mov              esi, r14d
                        call             rt_cap_push@PLT
                                                                                        jmp   xchain219_n9_α
xchain219_n7_β:
                        lea              rdi, [rbp + 144]
                        call             rt_cap_pop@PLT
                                                                                        jmp   xchain219_n6_β
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
xchain219_n8_α:
                        lea              rdi, [rbp + 144]
                        call             rt_cap_top@PLT
                        lea              rcx, [rip + .S6]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   xchain219_n0_as
xchain219_n8_β:
                        sub              r12, 24
                                                                                        jmp   xchain219_n9_β
# IR_MATCH_DEFER (ZS-2 jmp-entry)
xchain219_n9_α:
                        lea              rsi, [rip + g_sno_defer_cells+40]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx236_11
                        mov              rax, qword ptr [1879052592]
                        mov              rdx, qword ptr [1879052600]
                        cmp              eax, 3
                                                                                        jne   .Lx236_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx236_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx236_10
.Lx236_9:
                        xor              eax, eax
.Lx236_10:
                        lea              rsi, [rip + g_sno_defer_cells+40]
                        mov              qword ptr [rsi + 0], rax
.Lx236_11:
                        test             rax, rax
                                                                                        jz    .Lx236_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx236_4]
                        lea              rdx, [rip + .Lx236_5]
                                                                                        jmp   rax
.Lx236_4:
                                                                                        jmp   xchain219_n8_α
.Lx236_5:
                                                                                        jmp   xchain219_n7_β
.Lx236_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S5]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx236_2:
                        test             rax, rax
                                                                                        je    .Lx236_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx236_7]
                        lea              rdx, [rip + .Lx236_8]
                                                                                        jmp   rax
.Lx236_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx236_2
.Lx236_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx236_2
.Lx236_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    xchain219_n7_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx236_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   xchain219_n8_α
.Lx236_6:
                        add              rsp, 16
                                                                                        jmp   xchain219_n7_β
xchain219_n9_β:
                                                                                        jmp   qword ptr [rsp]
proc_PAT$3_scanhit:
                        cmp              qword ptr [rbp + 224], 1
                                                                                        jne   7f
                        mov              ecx, dword ptr [rbp + 216]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx], ecx
7:
                                                                                        jmp   proc_PAT$3_γ
proc_PAT$3_scanfail:
                        cmp              qword ptr [rbp + 224], 1
                                                                                        jne   8f
                        mov              eax, dword ptr [rbp + 216]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    8f
                        lea              rcx, [rip + g_anchor]
                        cmp              qword ptr [rcx], 0
                                                                                        jne   8f
                        mov              dword ptr [rbp + 216], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$3_attempt
8:
                                                                                        jmp   proc_PAT$3_ω
proc_PAT$3_res:
                        add              rsp, 8
                        pop              rbp
proc_PAT$3_β:
                                                                                        jmp   qword ptr [rbp + 192]
proc_PAT$3_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$3_res]
                        push             rax
                        mov              rax, [rbp + 232]
                        mov              rbp, [rbp + 248]
                                                                                        jmp   rax
proc_PAT$3_ω:
                        mov              rax, [rbp + 240]
                        lea              rsp, [rbp + 256]
                        mov              rbp, [rbp + 248]
                                                                                        jmp   rax
                        .globl           proc_PAT$4_α
proc_PAT$4_α:
#=======================================================================================================================
                        .global          proc_PAT$4_α
                        .global          proc_PAT$4_β
                        .global          proc_PAT$4_γ
                        .global          proc_PAT$4_ω
                        sub              rsp, 336
                        mov              [rsp + 312], rcx
                        mov              [rsp + 320], rdx
                        mov              [rsp + 328], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 128], 0
                        mov              qword ptr [rsp + 136], 0
                        mov              qword ptr [rsp + 224], 0
                        mov              qword ptr [rsp + 232], 0
                        mov              qword ptr [rsp + 272], 0
                        mov              qword ptr [rsp + 280], 0
                        mov              qword ptr [rsp + 288], 0
                        mov              qword ptr [rsp + 296], rsp
                        mov              qword ptr [rbp + 304], r8
                        mov              dword ptr [rbp + 296], r14d
proc_PAT$4_attempt:
proc_PAT$4_α_body:
                        lea              rax, [rip + xchain237_n0_β]
                        mov              qword ptr [rbp + 272], rax
# IR_MATCH_SEQ_NARY (SPD SEQ-STATIC: zero-counter, sigma/phi statically wired)
xchain237_n0_α:
                        mov              dword ptr [rbp + 16], r14d
                                                                                        jmp   xchain237_n1_α
xchain237_n0_as:
                                                                                        jmp   proc_PAT$4_γ
xchain237_n0_β:
                                                                                        jmp   xchain237_n2_β
xchain237_n0_af:
                                                                                        jmp   proc_PAT$4_ω
# IR_MATCH_DEFER (ZS-2 jmp-entry)
xchain237_n1_α:
                        lea              rsi, [rip + g_sno_defer_cells+48]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx240_11
                        mov              rax, qword ptr [1879052592]
                        mov              rdx, qword ptr [1879052600]
                        cmp              eax, 3
                                                                                        jne   .Lx240_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx240_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx240_10
.Lx240_9:
                        xor              eax, eax
.Lx240_10:
                        lea              rsi, [rip + g_sno_defer_cells+48]
                        mov              qword ptr [rsi + 0], rax
.Lx240_11:
                        test             rax, rax
                                                                                        jz    .Lx240_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx240_4]
                        lea              rdx, [rip + .Lx240_5]
                                                                                        jmp   rax
.Lx240_4:
                                                                                        jmp   xchain237_n2_α
.Lx240_5:
                                                                                        jmp   proc_PAT$4_ω
.Lx240_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S5]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx240_2:
                        test             rax, rax
                                                                                        je    .Lx240_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx240_7]
                        lea              rdx, [rip + .Lx240_8]
                                                                                        jmp   rax
.Lx240_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx240_2
.Lx240_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx240_2
.Lx240_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    proc_PAT$4_ω
                        mov              r14d, eax
                        lea              rax, [rip + .Lx240_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   xchain237_n2_α
.Lx240_6:
                        add              rsp, 16
                                                                                        jmp   proc_PAT$4_ω
xchain237_n1_β:
                                                                                        jmp   qword ptr [rsp]
# IR_MATCH_ALT_NARY
xchain237_n2_α:
                        mov              dword ptr [rbp + 48], r14d
                        mov              dword ptr [rbp + 52], 0
                                                                                        jmp   xchain237_n3_α
xchain237_n2_as:
                                                                                        jmp   proc_PAT$4_γ
xchain237_n2_β:
                        mov              eax, dword ptr [rbp + 52]
                        cmp              eax, 0
                                                                                        je    xchain237_n3_β
                        cmp              eax, 1
                                                                                        je    xchain237_n4_β
                                                                                        jmp   xchain237_n5_β
xchain237_n2_af:
                        add              dword ptr [rbp + 52], 1
                        mov              r14d, dword ptr [rbp + 48]
                        mov              eax, dword ptr [rbp + 52]
                        cmp              eax, 1
                                                                                        je    xchain237_n4_α
                        cmp              eax, 2
                                                                                        je    xchain237_n5_α
                                                                                        jmp   xchain237_n1_β
# IR_MATCH_SEQ_NARY (SPD SEQ-STATIC: zero-counter, sigma/phi statically wired)
xchain237_n3_α:
                        mov              dword ptr [rbp + 64], r14d
                                                                                        jmp   xchain237_n6_α
xchain237_n3_as:
                                                                                        jmp   xchain237_n2_as
xchain237_n3_β:
                                                                                        jmp   xchain237_n8_β
xchain237_n3_af:
                                                                                        jmp   xchain237_n2_af
# IR_MATCH_SEQ_NARY (SPD SEQ-STATIC: zero-counter, sigma/phi statically wired)
xchain237_n4_α:
                        mov              dword ptr [rbp + 176], r14d
                                                                                        jmp   xchain237_n9_α
xchain237_n4_as:
                                                                                        jmp   xchain237_n2_as
xchain237_n4_β:
                                                                                        jmp   xchain237_n11_β
xchain237_n4_af:
                                                                                        jmp   xchain237_n2_af
# IR_MATCH_LIT
xchain237_n5_α:
                                                                                        jmp   xchain237_n2_as
xchain237_n5_β:
                                                                                        jmp   xchain237_n2_af
# IR_MATCH_LIT
xchain237_n6_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    xchain237_n2_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 42
                                                                                        jne   xchain237_n2_af
                        add              r14d, 1
                                                                                        jmp   xchain237_n7_α
xchain237_n6_β:
                        sub              r14d, 1
                                                                                        jmp   xchain237_n2_af
# IR_MATCH_CAPTURE_SAVE push
xchain237_n7_α:
                        lea              rdi, [rbp + 128]
                        mov              esi, r14d
                        call             rt_cap_push@PLT
                                                                                        jmp   xchain237_n12_α
xchain237_n7_β:
                        lea              rdi, [rbp + 128]
                        call             rt_cap_pop@PLT
                                                                                        jmp   xchain237_n6_β
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
xchain237_n8_α:
                        lea              rdi, [rbp + 128]
                        call             rt_cap_top@PLT
                        lea              rcx, [rip + .S7]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   xchain237_n2_as
xchain237_n8_β:
                        sub              r12, 24
                                                                                        jmp   xchain237_n12_β
# IR_MATCH_LIT
xchain237_n9_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    xchain237_n2_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 47
                                                                                        jne   xchain237_n2_af
                        add              r14d, 1
                                                                                        jmp   xchain237_n10_α
xchain237_n9_β:
                        sub              r14d, 1
                                                                                        jmp   xchain237_n2_af
# IR_MATCH_CAPTURE_SAVE push
xchain237_n10_α:
                        lea              rdi, [rbp + 224]
                        mov              esi, r14d
                        call             rt_cap_push@PLT
                                                                                        jmp   xchain237_n13_α
xchain237_n10_β:
                        lea              rdi, [rbp + 224]
                        call             rt_cap_pop@PLT
                                                                                        jmp   xchain237_n9_β
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
xchain237_n11_α:
                        lea              rdi, [rbp + 224]
                        call             rt_cap_top@PLT
                        lea              rcx, [rip + .S8]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   xchain237_n2_as
xchain237_n11_β:
                        sub              r12, 24
                                                                                        jmp   xchain237_n13_β
# IR_MATCH_DEFER (ZS-2 jmp-entry)
xchain237_n12_α:
                        lea              rsi, [rip + g_sno_defer_cells+56]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx261_11
                        mov              rax, qword ptr [1879052608]
                        mov              rdx, qword ptr [1879052616]
                        cmp              eax, 3
                                                                                        jne   .Lx261_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx261_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx261_10
.Lx261_9:
                        xor              eax, eax
.Lx261_10:
                        lea              rsi, [rip + g_sno_defer_cells+56]
                        mov              qword ptr [rsi + 0], rax
.Lx261_11:
                        test             rax, rax
                                                                                        jz    .Lx261_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx261_4]
                        lea              rdx, [rip + .Lx261_5]
                                                                                        jmp   rax
.Lx261_4:
                                                                                        jmp   xchain237_n8_α
.Lx261_5:
                                                                                        jmp   xchain237_n7_β
.Lx261_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S9]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx261_2:
                        test             rax, rax
                                                                                        je    .Lx261_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx261_7]
                        lea              rdx, [rip + .Lx261_8]
                                                                                        jmp   rax
.Lx261_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx261_2
.Lx261_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx261_2
.Lx261_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    xchain237_n7_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx261_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   xchain237_n8_α
.Lx261_6:
                        add              rsp, 16
                                                                                        jmp   xchain237_n7_β
xchain237_n12_β:
                                                                                        jmp   qword ptr [rsp]
# IR_MATCH_DEFER (ZS-2 jmp-entry)
xchain237_n13_α:
                        lea              rsi, [rip + g_sno_defer_cells+64]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx262_11
                        mov              rax, qword ptr [1879052608]
                        mov              rdx, qword ptr [1879052616]
                        cmp              eax, 3
                                                                                        jne   .Lx262_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx262_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx262_10
.Lx262_9:
                        xor              eax, eax
.Lx262_10:
                        lea              rsi, [rip + g_sno_defer_cells+64]
                        mov              qword ptr [rsi + 0], rax
.Lx262_11:
                        test             rax, rax
                                                                                        jz    .Lx262_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx262_4]
                        lea              rdx, [rip + .Lx262_5]
                                                                                        jmp   rax
.Lx262_4:
                                                                                        jmp   xchain237_n11_α
.Lx262_5:
                                                                                        jmp   xchain237_n10_β
.Lx262_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S9]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx262_2:
                        test             rax, rax
                                                                                        je    .Lx262_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx262_7]
                        lea              rdx, [rip + .Lx262_8]
                                                                                        jmp   rax
.Lx262_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx262_2
.Lx262_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx262_2
.Lx262_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    xchain237_n10_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx262_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   xchain237_n11_α
.Lx262_6:
                        add              rsp, 16
                                                                                        jmp   xchain237_n10_β
xchain237_n13_β:
                                                                                        jmp   qword ptr [rsp]
proc_PAT$4_scanhit:
                        cmp              qword ptr [rbp + 304], 1
                                                                                        jne   7f
                        mov              ecx, dword ptr [rbp + 296]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx], ecx
7:
                                                                                        jmp   proc_PAT$4_γ
proc_PAT$4_scanfail:
                        cmp              qword ptr [rbp + 304], 1
                                                                                        jne   8f
                        mov              eax, dword ptr [rbp + 296]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    8f
                        lea              rcx, [rip + g_anchor]
                        cmp              qword ptr [rcx], 0
                                                                                        jne   8f
                        mov              dword ptr [rbp + 296], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$4_attempt
8:
                                                                                        jmp   proc_PAT$4_ω
proc_PAT$4_res:
                        add              rsp, 8
                        pop              rbp
proc_PAT$4_β:
                                                                                        jmp   qword ptr [rbp + 272]
proc_PAT$4_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$4_res]
                        push             rax
                        mov              rax, [rbp + 312]
                        mov              rbp, [rbp + 328]
                                                                                        jmp   rax
proc_PAT$4_ω:
                        mov              rax, [rbp + 320]
                        lea              rsp, [rbp + 336]
                        mov              rbp, [rbp + 328]
                                                                                        jmp   rax
                        .globl           proc_PAT$5_α
proc_PAT$5_α:
#=======================================================================================================================
                        .global          proc_PAT$5_α
                        .global          proc_PAT$5_β
                        .global          proc_PAT$5_γ
                        .global          proc_PAT$5_ω
                        sub              rsp, 336
                        mov              [rsp + 312], rcx
                        mov              [rsp + 320], rdx
                        mov              [rsp + 328], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 128], 0
                        mov              qword ptr [rsp + 136], 0
                        mov              qword ptr [rsp + 224], 0
                        mov              qword ptr [rsp + 232], 0
                        mov              qword ptr [rsp + 272], 0
                        mov              qword ptr [rsp + 280], 0
                        mov              qword ptr [rsp + 288], 0
                        mov              qword ptr [rsp + 296], rsp
                        mov              qword ptr [rbp + 304], r8
                        mov              dword ptr [rbp + 296], r14d
proc_PAT$5_attempt:
proc_PAT$5_α_body:
                        lea              rax, [rip + xchain263_n0_β]
                        mov              qword ptr [rbp + 272], rax
# IR_MATCH_SEQ_NARY (SPD SEQ-STATIC: zero-counter, sigma/phi statically wired)
xchain263_n0_α:
                        mov              dword ptr [rbp + 16], r14d
                                                                                        jmp   xchain263_n1_α
xchain263_n0_as:
                                                                                        jmp   proc_PAT$5_γ
xchain263_n0_β:
                                                                                        jmp   xchain263_n2_β
xchain263_n0_af:
                                                                                        jmp   proc_PAT$5_ω
# IR_MATCH_DEFER (ZS-2 jmp-entry)
xchain263_n1_α:
                        lea              rsi, [rip + g_sno_defer_cells+72]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx266_11
                        mov              rax, qword ptr [1879052608]
                        mov              rdx, qword ptr [1879052616]
                        cmp              eax, 3
                                                                                        jne   .Lx266_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx266_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx266_10
.Lx266_9:
                        xor              eax, eax
.Lx266_10:
                        lea              rsi, [rip + g_sno_defer_cells+72]
                        mov              qword ptr [rsi + 0], rax
.Lx266_11:
                        test             rax, rax
                                                                                        jz    .Lx266_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx266_4]
                        lea              rdx, [rip + .Lx266_5]
                                                                                        jmp   rax
.Lx266_4:
                                                                                        jmp   xchain263_n2_α
.Lx266_5:
                                                                                        jmp   proc_PAT$5_ω
.Lx266_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S9]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx266_2:
                        test             rax, rax
                                                                                        je    .Lx266_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx266_7]
                        lea              rdx, [rip + .Lx266_8]
                                                                                        jmp   rax
.Lx266_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx266_2
.Lx266_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx266_2
.Lx266_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    proc_PAT$5_ω
                        mov              r14d, eax
                        lea              rax, [rip + .Lx266_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   xchain263_n2_α
.Lx266_6:
                        add              rsp, 16
                                                                                        jmp   proc_PAT$5_ω
xchain263_n1_β:
                                                                                        jmp   qword ptr [rsp]
# IR_MATCH_ALT_NARY
xchain263_n2_α:
                        mov              dword ptr [rbp + 48], r14d
                        mov              dword ptr [rbp + 52], 0
                                                                                        jmp   xchain263_n3_α
xchain263_n2_as:
                                                                                        jmp   proc_PAT$5_γ
xchain263_n2_β:
                        mov              eax, dword ptr [rbp + 52]
                        cmp              eax, 0
                                                                                        je    xchain263_n3_β
                        cmp              eax, 1
                                                                                        je    xchain263_n4_β
                                                                                        jmp   xchain263_n5_β
xchain263_n2_af:
                        add              dword ptr [rbp + 52], 1
                        mov              r14d, dword ptr [rbp + 48]
                        mov              eax, dword ptr [rbp + 52]
                        cmp              eax, 1
                                                                                        je    xchain263_n4_α
                        cmp              eax, 2
                                                                                        je    xchain263_n5_α
                                                                                        jmp   xchain263_n1_β
# IR_MATCH_SEQ_NARY (SPD SEQ-STATIC: zero-counter, sigma/phi statically wired)
xchain263_n3_α:
                        mov              dword ptr [rbp + 64], r14d
                                                                                        jmp   xchain263_n6_α
xchain263_n3_as:
                                                                                        jmp   xchain263_n2_as
xchain263_n3_β:
                                                                                        jmp   xchain263_n8_β
xchain263_n3_af:
                                                                                        jmp   xchain263_n2_af
# IR_MATCH_SEQ_NARY (SPD SEQ-STATIC: zero-counter, sigma/phi statically wired)
xchain263_n4_α:
                        mov              dword ptr [rbp + 176], r14d
                                                                                        jmp   xchain263_n9_α
xchain263_n4_as:
                                                                                        jmp   xchain263_n2_as
xchain263_n4_β:
                                                                                        jmp   xchain263_n11_β
xchain263_n4_af:
                                                                                        jmp   xchain263_n2_af
# IR_MATCH_LIT
xchain263_n5_α:
                                                                                        jmp   xchain263_n2_as
xchain263_n5_β:
                                                                                        jmp   xchain263_n2_af
# IR_MATCH_LIT
xchain263_n6_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    xchain263_n2_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 43
                                                                                        jne   xchain263_n2_af
                        add              r14d, 1
                                                                                        jmp   xchain263_n7_α
xchain263_n6_β:
                        sub              r14d, 1
                                                                                        jmp   xchain263_n2_af
# IR_MATCH_CAPTURE_SAVE push
xchain263_n7_α:
                        lea              rdi, [rbp + 128]
                        mov              esi, r14d
                        call             rt_cap_push@PLT
                                                                                        jmp   xchain263_n12_α
xchain263_n7_β:
                        lea              rdi, [rbp + 128]
                        call             rt_cap_pop@PLT
                                                                                        jmp   xchain263_n6_β
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
xchain263_n8_α:
                        lea              rdi, [rbp + 128]
                        call             rt_cap_top@PLT
                        lea              rcx, [rip + .S10]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   xchain263_n2_as
xchain263_n8_β:
                        sub              r12, 24
                                                                                        jmp   xchain263_n12_β
# IR_MATCH_LIT
xchain263_n9_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    xchain263_n2_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 45
                                                                                        jne   xchain263_n2_af
                        add              r14d, 1
                                                                                        jmp   xchain263_n10_α
xchain263_n9_β:
                        sub              r14d, 1
                                                                                        jmp   xchain263_n2_af
# IR_MATCH_CAPTURE_SAVE push
xchain263_n10_α:
                        lea              rdi, [rbp + 224]
                        mov              esi, r14d
                        call             rt_cap_push@PLT
                                                                                        jmp   xchain263_n13_α
xchain263_n10_β:
                        lea              rdi, [rbp + 224]
                        call             rt_cap_pop@PLT
                                                                                        jmp   xchain263_n9_β
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
xchain263_n11_α:
                        lea              rdi, [rbp + 224]
                        call             rt_cap_top@PLT
                        lea              rcx, [rip + .S11]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   xchain263_n2_as
xchain263_n11_β:
                        sub              r12, 24
                                                                                        jmp   xchain263_n13_β
# IR_MATCH_DEFER (ZS-2 jmp-entry)
xchain263_n12_α:
                        lea              rsi, [rip + g_sno_defer_cells+80]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx287_11
                        mov              rax, qword ptr [1879052624]
                        mov              rdx, qword ptr [1879052632]
                        cmp              eax, 3
                                                                                        jne   .Lx287_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx287_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx287_10
.Lx287_9:
                        xor              eax, eax
.Lx287_10:
                        lea              rsi, [rip + g_sno_defer_cells+80]
                        mov              qword ptr [rsi + 0], rax
.Lx287_11:
                        test             rax, rax
                                                                                        jz    .Lx287_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx287_4]
                        lea              rdx, [rip + .Lx287_5]
                                                                                        jmp   rax
.Lx287_4:
                                                                                        jmp   xchain263_n8_α
.Lx287_5:
                                                                                        jmp   xchain263_n7_β
.Lx287_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S3]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx287_2:
                        test             rax, rax
                                                                                        je    .Lx287_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx287_7]
                        lea              rdx, [rip + .Lx287_8]
                                                                                        jmp   rax
.Lx287_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx287_2
.Lx287_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx287_2
.Lx287_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    xchain263_n7_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx287_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   xchain263_n8_α
.Lx287_6:
                        add              rsp, 16
                                                                                        jmp   xchain263_n7_β
xchain263_n12_β:
                                                                                        jmp   qword ptr [rsp]
# IR_MATCH_DEFER (ZS-2 jmp-entry)
xchain263_n13_α:
                        lea              rsi, [rip + g_sno_defer_cells+88]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx288_11
                        mov              rax, qword ptr [1879052624]
                        mov              rdx, qword ptr [1879052632]
                        cmp              eax, 3
                                                                                        jne   .Lx288_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx288_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx288_10
.Lx288_9:
                        xor              eax, eax
.Lx288_10:
                        lea              rsi, [rip + g_sno_defer_cells+88]
                        mov              qword ptr [rsi + 0], rax
.Lx288_11:
                        test             rax, rax
                                                                                        jz    .Lx288_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx288_4]
                        lea              rdx, [rip + .Lx288_5]
                                                                                        jmp   rax
.Lx288_4:
                                                                                        jmp   xchain263_n11_α
.Lx288_5:
                                                                                        jmp   xchain263_n10_β
.Lx288_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S3]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx288_2:
                        test             rax, rax
                                                                                        je    .Lx288_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx288_7]
                        lea              rdx, [rip + .Lx288_8]
                                                                                        jmp   rax
.Lx288_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx288_2
.Lx288_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx288_2
.Lx288_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    xchain263_n10_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx288_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   xchain263_n11_α
.Lx288_6:
                        add              rsp, 16
                                                                                        jmp   xchain263_n10_β
xchain263_n13_β:
                                                                                        jmp   qword ptr [rsp]
proc_PAT$5_scanhit:
                        cmp              qword ptr [rbp + 304], 1
                                                                                        jne   7f
                        mov              ecx, dword ptr [rbp + 296]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx], ecx
7:
                                                                                        jmp   proc_PAT$5_γ
proc_PAT$5_scanfail:
                        cmp              qword ptr [rbp + 304], 1
                                                                                        jne   8f
                        mov              eax, dword ptr [rbp + 296]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    8f
                        lea              rcx, [rip + g_anchor]
                        cmp              qword ptr [rcx], 0
                                                                                        jne   8f
                        mov              dword ptr [rbp + 296], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$5_attempt
8:
                                                                                        jmp   proc_PAT$5_ω
proc_PAT$5_res:
                        add              rsp, 8
                        pop              rbp
proc_PAT$5_β:
                                                                                        jmp   qword ptr [rbp + 272]
proc_PAT$5_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$5_res]
                        push             rax
                        mov              rax, [rbp + 312]
                        mov              rbp, [rbp + 328]
                                                                                        jmp   rax
proc_PAT$5_ω:
                        mov              rax, [rbp + 320]
                        lea              rsp, [rbp + 336]
                        mov              rbp, [rbp + 328]
                                                                                        jmp   rax
                        .globl           proc_PAT$6_α
proc_PAT$6_α:
#=======================================================================================================================
                        .global          proc_PAT$6_α
                        .global          proc_PAT$6_β
                        .global          proc_PAT$6_γ
                        .global          proc_PAT$6_ω
                        sub              rsp, 192
                        mov              [rsp + 168], rcx
                        mov              [rsp + 176], rdx
                        mov              [rsp + 184], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 128], 0
                        mov              qword ptr [rsp + 136], 0
                        mov              qword ptr [rsp + 144], 0
                        mov              qword ptr [rsp + 152], rsp
                        mov              qword ptr [rbp + 160], r8
                        mov              dword ptr [rbp + 152], r14d
proc_PAT$6_attempt:
proc_PAT$6_α_body:
                        lea              rax, [rip + proc_PAT$6_ω]
                        mov              qword ptr [rbp + 128], rax
# IR_LIT_INTEGER
xchain289_n0_α:
                        mov              qword ptr [rbp + 96], 6
                        mov              rax, qword ptr [rip + .Lx290_0]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   xchain289_n1_α
.Lx290_0:
                        .quad            10
xchain289_n1_α:
# BOX CALL CHAR(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [zr+96] -> [zr+64]
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 72], rax
                        .section         .rodata
.Lbynamefn211:          .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn211]
                        lea              rsi, [rbp + 64]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_PAT$6_scanfail
                                                                                        jmp   xchain289_n2_α
xchain289_n1_β:
                                                                                        jmp   proc_PAT$6_scanfail
# IR_MATCH_VALUE (operand[0] pattern value, no manufactured name)
xchain289_n2_α:
                        lea              rdi, [rbp + 48]
                        call             rt_match_value_get_pat_fn@PLT
                        test             rax, rax
                                                                                        jz    .Lx292_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx292_4]
                        lea              rdx, [rip + .Lx292_5]
                                                                                        jmp   rax
.Lx292_4:
                                                                                        jmp   xchain289_n3_α
.Lx292_5:
                                                                                        jmp   proc_PAT$6_scanfail
.Lx292_0:
                        lea              rdi, [rbp + 48]
                        call             rt_match_value_open@PLT
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    proc_PAT$6_scanfail
                        mov              r14d, eax
                        lea              rax, [rip + .Lx292_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   xchain289_n3_α
.Lx292_6:
                        add              rsp, 16
                                                                                        jmp   proc_PAT$6_scanfail
xchain289_n2_β:
                                                                                        jmp   qword ptr [rsp]
# IR_MATCH_FENCE1 ival=0 (FENCE0 interior sync box: alpha commits — whack the activation's dynamic zeta to the rbp floor — then gamma; beta abandons to omega)
xchain289_n3_α:
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$6_scanhit
xchain289_n3_β:
                                                                                        jmp   proc_PAT$6_scanfail
proc_PAT$6_scanhit:
                        cmp              qword ptr [rbp + 160], 1
                                                                                        jne   7f
                        mov              ecx, dword ptr [rbp + 152]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx], ecx
7:
                                                                                        jmp   proc_PAT$6_γ
proc_PAT$6_scanfail:
                        cmp              qword ptr [rbp + 160], 1
                                                                                        jne   8f
                        mov              eax, dword ptr [rbp + 152]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    8f
                        lea              rcx, [rip + g_anchor]
                        cmp              qword ptr [rcx], 0
                                                                                        jne   8f
                        mov              dword ptr [rbp + 152], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$6_attempt
8:
                                                                                        jmp   proc_PAT$6_ω
proc_PAT$6_res:
                        add              rsp, 8
                        pop              rbp
proc_PAT$6_β:
                                                                                        jmp   qword ptr [rbp + 128]
proc_PAT$6_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$6_res]
                        push             rax
                        mov              rax, [rbp + 168]
                        mov              rbp, [rbp + 184]
                                                                                        jmp   rax
proc_PAT$6_ω:
                        mov              rax, [rbp + 176]
                        lea              rsp, [rbp + 192]
                        mov              rbp, [rbp + 184]
                                                                                        jmp   rax
                        .globl           proc_PAT$7_α
proc_PAT$7_α:
#=======================================================================================================================
                        .global          proc_PAT$7_α
                        .global          proc_PAT$7_β
                        .global          proc_PAT$7_γ
                        .global          proc_PAT$7_ω
                        sub              rsp, 368
                        mov              [rsp + 344], rcx
                        mov              [rsp + 352], rdx
                        mov              [rsp + 360], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 224], 0
                        mov              qword ptr [rsp + 232], 0
                        mov              qword ptr [rsp + 304], 0
                        mov              qword ptr [rsp + 312], 0
                        mov              qword ptr [rsp + 320], 0
                        mov              qword ptr [rsp + 328], rsp
                        mov              qword ptr [rbp + 336], r8
                        mov              dword ptr [rbp + 328], r14d
proc_PAT$7_attempt:
proc_PAT$7_α_body:
                        lea              rax, [rip + xchain295_n0_β]
                        mov              qword ptr [rbp + 304], rax
# IR_MATCH_SEQ_NARY (SPD SEQ-STATIC: zero-counter, sigma/phi statically wired)
xchain295_n0_α:
                        mov              dword ptr [rbp + 16], r14d
                                                                                        jmp   xchain295_n1_α
xchain295_n0_as:
                                                                                        jmp   proc_PAT$7_γ
xchain295_n0_β:
                                                                                        jmp   xchain295_n5_β
xchain295_n0_af:
                                                                                        jmp   proc_PAT$7_ω
# IR_LIT_INTEGER
xchain295_n1_α:
                        mov              qword ptr [rbp + 48], 6
                        mov              rax, qword ptr [rip + .Lx298_0]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   xchain295_n2_α
xchain295_n1_β:
                                                                                        jmp   proc_PAT$7_ω
.Lx298_0:
                        .quad            0
# IR_MATCH_POS
xchain295_n2_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   proc_PAT$7_ω
                                                                                        jmp   xchain295_n3_α
xchain295_n2_β:
                                                                                        jmp   proc_PAT$7_ω
# IR_MATCH_ARBNO_NARY (ZB-FC-4 rsp linked-frame-chain)
xchain295_n3_α:
                        mov              dword ptr [rbp + 96], r14d
                        mov              dword ptr [rbp + 100], r14d
                        mov              dword ptr [rbp + 104], 0
                        mov              qword ptr [rbp + 120], rsp
                        mov              qword ptr [rbp + 112], 0
                                                                                        jmp   xchain295_n4_α
xchain295_n3_β:
                        mov              r14d, dword ptr [rbp + 100]
                        mov              rax, qword ptr [rbp + 112]
                        sub              rsp, 176
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              eax, 0
                        mov              qword ptr [rsp + 120], rax
                        mov              qword ptr [rbp + 112], rsp
                        mov              rbp, rsp
                        add              rbp, -104
                                                                                        jmp   xchain295_n6_α
xchain295_n3_as:
                        mov              eax, dword ptr [rbp + 112]
                        cmp              r14d, eax
                                                                                        je    xchain295_n6_β
                        mov              rbp, qword ptr [rbp + 104]
                        mov              eax, dword ptr [rbp + 104]
                        add              eax, 1
                        mov              dword ptr [rbp + 104], eax
                        mov              dword ptr [rbp + 100], r14d
                                                                                        jmp   xchain295_n4_α
xchain295_n3_af:
                        mov              rax, qword ptr [rbp + 120]
                        mov              rdx, qword ptr [rbp + 104]
                        lea              rsp, [rbp + 280]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 104]
                        test             ecx, ecx
                                                                                        jz    .Lx301_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 104], ecx
                        mov              qword ptr [rbp + 112], rax
                        lea              rbp, [rax + -104]
                                                                                        jmp   xchain295_n6_β
.Lx301_2:
                        mov              r14d, dword ptr [rbp + 96]
                        mov              rsp, qword ptr [rbp + 120]
                                                                                        jmp   xchain295_n2_β
# IR_LIT_INTEGER
xchain295_n4_α:
                        mov              qword ptr [rbp + 272], 6
                        mov              rax, qword ptr [rip + .Lx302_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   xchain295_n5_α
xchain295_n4_β:
                                                                                        jmp   xchain295_n3_β
.Lx302_0:
                        .quad            0
# IR_MATCH_RPOS
xchain295_n5_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   xchain295_n3_β
                                                                                        jmp   proc_PAT$7_γ
xchain295_n5_β:
                                                                                        jmp   xchain295_n3_β
# IR_MATCH_SEQ_NARY (SPD SEQ-STATIC: zero-counter, sigma/phi statically wired)
xchain295_n6_α:
                        mov              dword ptr [rbp + 144], r14d
                                                                                        jmp   xchain295_n8_α
xchain295_n6_as:
                                                                                        jmp   xchain295_n3_as
xchain295_n6_β:
                                                                                        jmp   xchain295_n11_β
xchain295_n6_af:
                                                                                        jmp   xchain295_n3_af
# IR_MATCH_DEFER (ZS-2 jmp-entry)
xchain295_n7_α:
                        lea              rdi, [rip + .S12]
                        xor              esi, esi
                        call             rt_defer_get_pat_fn@PLT
                        test             rax, rax
                                                                                        jz    .Lx306_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx306_4]
                        lea              rdx, [rip + .Lx306_5]
                                                                                        jmp   rax
.Lx306_4:
                                                                                        jmp   xchain295_n11_α
.Lx306_5:
                                                                                        jmp   xchain295_n10_β
.Lx306_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S12]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx306_2:
                        test             rax, rax
                                                                                        je    .Lx306_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx306_7]
                        lea              rdx, [rip + .Lx306_8]
                                                                                        jmp   rax
.Lx306_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx306_2
.Lx306_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx306_2
.Lx306_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    xchain295_n10_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx306_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   xchain295_n11_α
.Lx306_6:
                        add              rsp, 16
                                                                                        jmp   xchain295_n10_β
xchain295_n7_β:
                                                                                        jmp   qword ptr [rsp]
# IR_MATCH_DEFER (ZS-2 jmp-entry)
xchain295_n8_α:
                        lea              rsi, [rip + g_sno_defer_cells+96]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx307_11
                        mov              rax, qword ptr [1879052624]
                        mov              rdx, qword ptr [1879052632]
                        cmp              eax, 3
                                                                                        jne   .Lx307_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx307_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx307_10
.Lx307_9:
                        xor              eax, eax
.Lx307_10:
                        lea              rsi, [rip + g_sno_defer_cells+96]
                        mov              qword ptr [rsi + 0], rax
.Lx307_11:
                        test             rax, rax
                                                                                        jz    .Lx307_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx307_4]
                        lea              rdx, [rip + .Lx307_5]
                                                                                        jmp   rax
.Lx307_4:
                                                                                        jmp   xchain295_n9_α
.Lx307_5:
                                                                                        jmp   xchain295_n3_af
.Lx307_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S3]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx307_2:
                        test             rax, rax
                                                                                        je    .Lx307_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx307_7]
                        lea              rdx, [rip + .Lx307_8]
                                                                                        jmp   rax
.Lx307_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx307_2
.Lx307_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx307_2
.Lx307_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    xchain295_n3_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx307_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   xchain295_n9_α
.Lx307_6:
                        add              rsp, 16
                                                                                        jmp   xchain295_n3_af
xchain295_n8_β:
                                                                                        jmp   qword ptr [rsp]
# IR_MATCH_DEFER (ZS-2 jmp-entry)
xchain295_n9_α:
# s137 SEALED defer: fence-demarked sync point (watermark in defer.pad)
                        mov              qword ptr [rbp + 176], rsp
                        mov              rax, qword ptr [1879052640]
                        mov              rdx, qword ptr [1879052648]
                        cmp              eax, 3
                                                                                        jne   .Lx308_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx308_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx308_10
.Lx308_9:
                        xor              eax, eax
.Lx308_10:
                        test             rax, rax
                                                                                        jz    .Lx308_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx308_4]
                        lea              rdx, [rip + .Lx308_5]
                                                                                        jmp   rax
.Lx308_4:
                        mov              rsp, qword ptr [rbp + 176]
                                                                                        jmp   xchain295_n10_α
.Lx308_5:
                        mov              rsp, qword ptr [rbp + 176]
                                                                                        jmp   xchain295_n8_β
.Lx308_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S13]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx308_2:
                        test             rax, rax
                                                                                        je    .Lx308_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx308_7]
                        lea              rdx, [rip + .Lx308_8]
                                                                                        jmp   rax
.Lx308_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx308_2
.Lx308_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx308_2
.Lx308_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    xchain295_n8_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx308_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   xchain295_n10_α
.Lx308_6:
                        add              rsp, 16
                                                                                        jmp   xchain295_n8_β
xchain295_n9_β:
                        mov              rsp, qword ptr [rbp + 176]
                                                                                        jmp   xchain295_n8_β
# IR_MATCH_CAPTURE_SAVE push
xchain295_n10_α:
                        lea              rdi, [rbp + 224]
                        mov              esi, r14d
                        call             rt_cap_push@PLT
                                                                                        jmp   xchain295_n7_α
xchain295_n10_β:
                        lea              rdi, [rbp + 224]
                        call             rt_cap_pop@PLT
                                                                                        jmp   xchain295_n9_β
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
xchain295_n11_α:
                        lea              rdi, [rbp + 224]
                        call             rt_cap_top@PLT
                        lea              rcx, [rip + .S14]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   xchain295_n3_as
xchain295_n11_β:
                        sub              r12, 24
                                                                                        jmp   xchain295_n7_β
proc_PAT$7_scanhit:
                        cmp              qword ptr [rbp + 336], 1
                                                                                        jne   7f
                        mov              ecx, dword ptr [rbp + 328]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx], ecx
7:
                                                                                        jmp   proc_PAT$7_γ
proc_PAT$7_scanfail:
                        cmp              qword ptr [rbp + 336], 1
                                                                                        jne   8f
                        mov              eax, dword ptr [rbp + 328]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    8f
                        lea              rcx, [rip + g_anchor]
                        cmp              qword ptr [rcx], 0
                                                                                        jne   8f
                        mov              dword ptr [rbp + 328], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$7_attempt
8:
                                                                                        jmp   proc_PAT$7_ω
proc_PAT$7_res:
                        add              rsp, 8
                        pop              rbp
proc_PAT$7_β:
                                                                                        jmp   qword ptr [rbp + 304]
proc_PAT$7_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$7_res]
                        push             rax
                        mov              rax, [rbp + 344]
                        mov              rbp, [rbp + 360]
                                                                                        jmp   rax
proc_PAT$7_ω:
                        mov              rax, [rbp + 352]
                        lea              rsp, [rbp + 368]
                        mov              rbp, [rbp + 360]
                                                                                        jmp   rax
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "EMIT"
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
                        lea              rsi, [rip + proc_EMIT_α]
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
.Lstartup_pname1:       .string          "PSH"
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
                        lea              rsi, [rip + proc_PSH_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 336
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "DRF"
.Lstartup_pp2_0:        .string          "nm"
                        .align           8
.Lstartup_pnames2:
                        .quad            .Lstartup_pp2_0
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + .Lstartup_pnames2]
                        mov              edx, 1
                        call             rt_proc_register@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_dyn_scope@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_DRF_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 480
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "ADD"
.Lstartup_pp3_0:        .string          "p1"
                        .align           8
.Lstartup_pnames3:
                        .quad            .Lstartup_pp3_0
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + .Lstartup_pnames3]
                        mov              edx, 1
                        call             rt_proc_register@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_dyn_scope@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_ADD_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 832
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "SUB"
.Lstartup_pp4_0:        .string          "p1"
                        .align           8
.Lstartup_pnames4:
                        .quad            .Lstartup_pp4_0
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + .Lstartup_pnames4]
                        mov              edx, 1
                        call             rt_proc_register@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_dyn_scope@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + proc_SUB_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 832
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "MUL"
.Lstartup_pp5_0:        .string          "p1"
                        .align           8
.Lstartup_pnames5:
                        .quad            .Lstartup_pp5_0
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname5]
                        lea              rsi, [rip + .Lstartup_pnames5]
                        mov              edx, 1
                        call             rt_proc_register@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_dyn_scope@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        lea              rsi, [rip + proc_MUL_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 832
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname6:       .string          "DIV"
.Lstartup_pp6_0:        .string          "p1"
                        .align           8
.Lstartup_pnames6:
                        .quad            .Lstartup_pp6_0
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname6]
                        lea              rsi, [rip + .Lstartup_pnames6]
                        mov              edx, 1
                        call             rt_proc_register@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_dyn_scope@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        lea              rsi, [rip + proc_DIV_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 832
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname7:       .string          "NEG"
                        .align           8
.Lstartup_pnames7:
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname7]
                        lea              rsi, [rip + .Lstartup_pnames7]
                        mov              edx, 0
                        call             rt_proc_register@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1
                        call             rt_proc_set_dyn_scope@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        lea              rsi, [rip + proc_NEG_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 512
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname8:       .string          "PAT$0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname8]
                        lea              rsi, [rip + proc_PAT$0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 112
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1
                        call             rt_proc_set_zstatic@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname9:       .string          "PAT$1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname9]
                        lea              rsi, [rip + proc_PAT$1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 128
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 1
                        call             rt_proc_set_zstatic@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname10:      .string          "PAT$2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname10]
                        lea              rsi, [rip + proc_PAT$2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 144
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname11:      .string          "PAT$3"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname11]
                        lea              rsi, [rip + proc_PAT$3_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 224
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname12:      .string          "PAT$4"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname12]
                        lea              rsi, [rip + proc_PAT$4_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 304
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname13:      .string          "PAT$5"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname13]
                        lea              rsi, [rip + proc_PAT$5_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
                        mov              esi, 304
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname14:      .string          "PAT$6"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname14]
                        lea              rsi, [rip + proc_PAT$6_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname14]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname14]
                        mov              esi, 160
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname14]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname15:      .string          "PAT$7"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname15]
                        lea              rsi, [rip + proc_PAT$7_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname15]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname15]
                        mov              esi, 336
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname15]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.Lgvan0:                .string          "EMIT"
.Lgvan1:                .string          "PSH"
.Lgvan2:                .string          "DRF"
.Lgvan3:                .string          "nm"
.Lgvan4:                .string          "ADD"
.Lgvan5:                .string          "p1"
.Lgvan6:                .string          "SUB"
.Lgvan7:                .string          "MUL"
.Lgvan8:                .string          "DIV"
.Lgvan9:                .string          "NEG"
.Lgvan10:               .string          "S"
.Lgvan11:               .string          "sp"
.Lgvan12:               .string          "dm"
.Lgvan13:               .string          "vars"
.Lgvan14:               .string          "LCASE"
.Lgvan15:               .string          "DIGITS"
.Lgvan16:               .string          "V"
.Lgvan17:               .string          "I"
.Lgvan18:               .string          "A"
.Lgvan19:               .string          "F"
.Lgvan20:               .string          "T"
.Lgvan21:               .string          "X"
.Lgvan22:               .string          "eol"
.Lgvan23:               .string          "C"
.Lgvan24:               .string          "nl"
.Lgvan25:               .string          "line"
.Lgvan26:               .string          "b1"
.Lgvan27:               .string          "b2"
.Lgvan28:               .string          "src"
.Lgvan29:               .string          "t0"
.Lgvan30:               .string          "t1"
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
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        mov              edi, 31
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 31
                        call             gva_register@PLT
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
                        mov              qword ptr [rsp + 7736], rsp
                        mov              r12, qword ptr [1879048192]
                        mov              [rsp + 65536], rbp
                        mov              rbp, rsp
main_α_body:
#         DEFINE('EMIT()')                        :(EMIT_x)
#         DEFINE('PSH()')                         :(PSH_x)
#         DEFINE('DRF(nm)')                       :(DRF_x)
#         DEFINE('ADD()p1')                       :(ADD_x)
#         DEFINE('SUB()p1')                       :(SUB_x)
#         DEFINE('MUL()p1')                       :(MUL_x)
#         DEFINE('DIV()p1')                       :(DIV_x)
#         DEFINE('NEG()')                         :(NEG_x)
#         S = ARRAY(65536)
# IR_LIT_INTEGER
xchain313_n0_α:
                        mov              qword ptr [rbp + 4352], 6
                        mov              rax, qword ptr [rip + .Lx314_0]
                        mov              qword ptr [rbp + 4360], rax
                                                                                        jmp   xchain313_n1_α
.Lx314_0:
                        .quad            65536
xchain313_n1_α:
# BOX IR_CALL ARRAY(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4352] -> [zr+4320]
                        mov              rax, qword ptr [rbp + 4352]
                        mov              qword ptr [rbp + 4320], rax
                        mov              rax, qword ptr [rbp + 4360]
                        mov              qword ptr [rbp + 4328], rax
                        .section         .rodata
.Lrkfn316:              .string          "ARRAY"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn316]
                        lea              rsi, [rbp + 4320]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4304], rax
                        mov              qword ptr [rbp + 4312], rdx
                        cmp              eax, 99
                                                                                        je    xchain313_n3_α
                                                                                        jmp   xchain313_n2_α
xchain313_n1_β:
                                                                                        jmp   xchain313_n3_α
# IR_ASSIGN gva
xchain313_n2_α:
                        mov              rax, qword ptr [rbp + 4304]
                        mov              rdx, qword ptr [rbp + 4312]
                        mov              qword ptr [1879052448], rax
                        mov              qword ptr [1879052456], rdx
                        mov              qword ptr [rbp + 4288], rax
                        mov              qword ptr [rbp + 4296], rdx
                                                                                        jmp   xchain313_n3_α
#         LCASE = &LCASE
# IR_KEYWORD_SNOBOL4_read
xchain313_n3_α:
                        mov              rdi, qword ptr [rip + .Lx318_0]
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rbp + 4400], rax
                        mov              qword ptr [rbp + 4408], rdx
                                                                                        jmp   xchain313_n4_α
.Lx318_0:
                        .quad            .Lx318_0_s
.Lx318_0_s:
                        .string          "LCASE"
# IR_ASSIGN gva
xchain313_n4_α:
                        mov              rax, qword ptr [rbp + 4400]
                        mov              rdx, qword ptr [rbp + 4408]
                        mov              qword ptr [1879052512], rax
                        mov              qword ptr [1879052520], rdx
                        mov              qword ptr [rbp + 4384], rax
                        mov              qword ptr [rbp + 4392], rdx
                                                                                        jmp   xchain313_n5_α
#         DIGITS = '0123456789'
# IR_LIT_STRING
xchain313_n5_α:
                        mov              qword ptr [rbp + 4432], 1
                        mov              rax, qword ptr [rip + .Lx320_0]
                        mov              qword ptr [rbp + 4440], rax
                                                                                        jmp   xchain313_n6_α
.Lx320_0:
                        .quad            .Lx320_0_s
.Lx320_0_s:
                        .string          "0123456789"
# IR_ASSIGN gva
xchain313_n6_α:
                        mov              rax, qword ptr [rbp + 4432]
                        mov              rdx, qword ptr [rbp + 4440]
                        mov              qword ptr [1879052528], rax
                        mov              qword ptr [1879052536], rdx
                        mov              qword ptr [rbp + 4416], rax
                        mov              qword ptr [rbp + 4424], rdx
                                                                                        jmp   xchain313_n7_α
#         V = ANY(&LCASE) . *PSH()
# IR_LIT_STRING
xchain313_n7_α:
                        mov              qword ptr [rbp + 4528], 1
                        mov              rax, qword ptr [rip + .Lx322_0]
                        mov              qword ptr [rbp + 4536], rax
                                                                                        jmp   xchain313_n8_α
.Lx322_0:
                        .quad            .Lx322_0_s
.Lx322_0_s:
                        .string          "PAT$0"
xchain313_n8_α:
# BOX IR_CALL SNO$MKPAT(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4528] -> [zr+4496]
                        mov              rax, qword ptr [rbp + 4528]
                        mov              qword ptr [rbp + 4496], rax
                        mov              rax, qword ptr [rbp + 4536]
                        mov              qword ptr [rbp + 4504], rax
                        .section         .rodata
.Lrkfn324:              .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn324]
                        lea              rsi, [rbp + 4496]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4480], rax
                        mov              qword ptr [rbp + 4488], rdx
                        cmp              eax, 99
                                                                                        je    xchain313_n10_α
                                                                                        jmp   xchain313_n9_α
xchain313_n8_β:
                                                                                        jmp   xchain313_n10_α
# IR_ASSIGN gva
xchain313_n9_α:
                        mov              rax, qword ptr [rbp + 4480]
                        mov              rdx, qword ptr [rbp + 4488]
                        mov              qword ptr [1879052544], rax
                        mov              qword ptr [1879052552], rdx
                        mov              qword ptr [rbp + 4464], rax
                        mov              qword ptr [rbp + 4472], rdx
                                                                                        jmp   xchain313_n10_α
#         I = SPAN('0123456789') . *PSH()
# IR_LIT_STRING
xchain313_n10_α:
                        mov              qword ptr [rbp + 4624], 1
                        mov              rax, qword ptr [rip + .Lx326_0]
                        mov              qword ptr [rbp + 4632], rax
                                                                                        jmp   xchain313_n11_α
.Lx326_0:
                        .quad            .Lx326_0_s
.Lx326_0_s:
                        .string          "PAT$1"
xchain313_n11_α:
# BOX IR_CALL SNO$MKPAT(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4624] -> [zr+4592]
                        mov              rax, qword ptr [rbp + 4624]
                        mov              qword ptr [rbp + 4592], rax
                        mov              rax, qword ptr [rbp + 4632]
                        mov              qword ptr [rbp + 4600], rax
                        .section         .rodata
.Lrkfn328:              .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn328]
                        lea              rsi, [rbp + 4592]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4576], rax
                        mov              qword ptr [rbp + 4584], rdx
                        cmp              eax, 99
                                                                                        je    xchain313_n13_α
                                                                                        jmp   xchain313_n12_α
xchain313_n11_β:
                                                                                        jmp   xchain313_n13_α
# IR_ASSIGN gva
xchain313_n12_α:
                        mov              rax, qword ptr [rbp + 4576]
                        mov              rdx, qword ptr [rbp + 4584]
                        mov              qword ptr [1879052560], rax
                        mov              qword ptr [1879052568], rdx
                        mov              qword ptr [rbp + 4560], rax
                        mov              qword ptr [rbp + 4568], rdx
                                                                                        jmp   xchain313_n13_α
#         A = V | I | FENCE('(' *X ')')
# IR_LIT_STRING
xchain313_n13_α:
                        mov              qword ptr [rbp + 4720], 1
                        mov              rax, qword ptr [rip + .Lx330_0]
                        mov              qword ptr [rbp + 4728], rax
                                                                                        jmp   xchain313_n14_α
.Lx330_0:
                        .quad            .Lx330_0_s
.Lx330_0_s:
                        .string          "PAT$2"
xchain313_n14_α:
# BOX IR_CALL SNO$MKPAT(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4720] -> [zr+4688]
                        mov              rax, qword ptr [rbp + 4720]
                        mov              qword ptr [rbp + 4688], rax
                        mov              rax, qword ptr [rbp + 4728]
                        mov              qword ptr [rbp + 4696], rax
                        .section         .rodata
.Lrkfn332:              .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn332]
                        lea              rsi, [rbp + 4688]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4672], rax
                        mov              qword ptr [rbp + 4680], rdx
                        cmp              eax, 99
                                                                                        je    xchain313_n16_α
                                                                                        jmp   xchain313_n15_α
xchain313_n14_β:
                                                                                        jmp   xchain313_n16_α
# IR_ASSIGN gva
xchain313_n15_α:
                        mov              rax, qword ptr [rbp + 4672]
                        mov              rdx, qword ptr [rbp + 4680]
                        mov              qword ptr [1879052576], rax
                        mov              qword ptr [1879052584], rdx
                        mov              qword ptr [rbp + 4656], rax
                        mov              qword ptr [rbp + 4664], rdx
                                                                                        jmp   xchain313_n16_α
#         F = A | FENCE('+' *F) | FENCE('-' *F . *NEG())
# IR_LIT_STRING
xchain313_n16_α:
                        mov              qword ptr [rbp + 4816], 1
                        mov              rax, qword ptr [rip + .Lx334_0]
                        mov              qword ptr [rbp + 4824], rax
                                                                                        jmp   xchain313_n17_α
.Lx334_0:
                        .quad            .Lx334_0_s
.Lx334_0_s:
                        .string          "PAT$3"
xchain313_n17_α:
# BOX IR_CALL SNO$MKPAT(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4816] -> [zr+4784]
                        mov              rax, qword ptr [rbp + 4816]
                        mov              qword ptr [rbp + 4784], rax
                        mov              rax, qword ptr [rbp + 4824]
                        mov              qword ptr [rbp + 4792], rax
                        .section         .rodata
.Lrkfn336:              .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn336]
                        lea              rsi, [rbp + 4784]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4768], rax
                        mov              qword ptr [rbp + 4776], rdx
                        cmp              eax, 99
                                                                                        je    xchain313_n19_α
                                                                                        jmp   xchain313_n18_α
xchain313_n17_β:
                                                                                        jmp   xchain313_n19_α
# IR_ASSIGN gva
xchain313_n18_α:
                        mov              rax, qword ptr [rbp + 4768]
                        mov              rdx, qword ptr [rbp + 4776]
                        mov              qword ptr [1879052592], rax
                        mov              qword ptr [1879052600], rdx
                        mov              qword ptr [rbp + 4752], rax
                        mov              qword ptr [rbp + 4760], rdx
                                                                                        jmp   xchain313_n19_α
#         T = F ( FENCE('*' *T . *MUL()) | FENCE('/' *T . *DIV()) | '' )
# IR_LIT_STRING
xchain313_n19_α:
                        mov              qword ptr [rbp + 4912], 1
                        mov              rax, qword ptr [rip + .Lx338_0]
                        mov              qword ptr [rbp + 4920], rax
                                                                                        jmp   xchain313_n20_α
.Lx338_0:
                        .quad            .Lx338_0_s
.Lx338_0_s:
                        .string          "PAT$4"
xchain313_n20_α:
# BOX IR_CALL SNO$MKPAT(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4912] -> [zr+4880]
                        mov              rax, qword ptr [rbp + 4912]
                        mov              qword ptr [rbp + 4880], rax
                        mov              rax, qword ptr [rbp + 4920]
                        mov              qword ptr [rbp + 4888], rax
                        .section         .rodata
.Lrkfn340:              .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn340]
                        lea              rsi, [rbp + 4880]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4864], rax
                        mov              qword ptr [rbp + 4872], rdx
                        cmp              eax, 99
                                                                                        je    xchain313_n22_α
                                                                                        jmp   xchain313_n21_α
xchain313_n20_β:
                                                                                        jmp   xchain313_n22_α
# IR_ASSIGN gva
xchain313_n21_α:
                        mov              rax, qword ptr [rbp + 4864]
                        mov              rdx, qword ptr [rbp + 4872]
                        mov              qword ptr [1879052608], rax
                        mov              qword ptr [1879052616], rdx
                        mov              qword ptr [rbp + 4848], rax
                        mov              qword ptr [rbp + 4856], rdx
                                                                                        jmp   xchain313_n22_α
#         X = T ( FENCE('+' *X . *ADD()) | FENCE('-' *X . *SUB()) | '' )
# IR_LIT_STRING
xchain313_n22_α:
                        mov              qword ptr [rbp + 5008], 1
                        mov              rax, qword ptr [rip + .Lx342_0]
                        mov              qword ptr [rbp + 5016], rax
                                                                                        jmp   xchain313_n23_α
.Lx342_0:
                        .quad            .Lx342_0_s
.Lx342_0_s:
                        .string          "PAT$5"
xchain313_n23_α:
# BOX IR_CALL SNO$MKPAT(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5008] -> [zr+4976]
                        mov              rax, qword ptr [rbp + 5008]
                        mov              qword ptr [rbp + 4976], rax
                        mov              rax, qword ptr [rbp + 5016]
                        mov              qword ptr [rbp + 4984], rax
                        .section         .rodata
.Lrkfn344:              .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn344]
                        lea              rsi, [rbp + 4976]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4960], rax
                        mov              qword ptr [rbp + 4968], rdx
                        cmp              eax, 99
                                                                                        je    xchain313_n25_α
                                                                                        jmp   xchain313_n24_α
xchain313_n23_β:
                                                                                        jmp   xchain313_n25_α
# IR_ASSIGN gva
xchain313_n24_α:
                        mov              rax, qword ptr [rbp + 4960]
                        mov              rdx, qword ptr [rbp + 4968]
                        mov              qword ptr [1879052624], rax
                        mov              qword ptr [1879052632], rdx
                        mov              qword ptr [rbp + 4944], rax
                        mov              qword ptr [rbp + 4952], rdx
                                                                                        jmp   xchain313_n25_α
#         eol = CHAR(10) FENCE
# IR_LIT_STRING
xchain313_n25_α:
                        mov              qword ptr [rbp + 5104], 1
                        mov              rax, qword ptr [rip + .Lx346_0]
                        mov              qword ptr [rbp + 5112], rax
                                                                                        jmp   xchain313_n26_α
.Lx346_0:
                        .quad            .Lx346_0_s
.Lx346_0_s:
                        .string          "PAT$6"
xchain313_n26_α:
# BOX IR_CALL SNO$MKPAT(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5104] -> [zr+5072]
                        mov              rax, qword ptr [rbp + 5104]
                        mov              qword ptr [rbp + 5072], rax
                        mov              rax, qword ptr [rbp + 5112]
                        mov              qword ptr [rbp + 5080], rax
                        .section         .rodata
.Lrkfn348:              .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn348]
                        lea              rsi, [rbp + 5072]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5056], rax
                        mov              qword ptr [rbp + 5064], rdx
                        cmp              eax, 99
                                                                                        je    xchain313_n28_α
                                                                                        jmp   xchain313_n27_α
xchain313_n26_β:
                                                                                        jmp   xchain313_n28_α
# IR_ASSIGN gva
xchain313_n27_α:
                        mov              rax, qword ptr [rbp + 5056]
                        mov              rdx, qword ptr [rbp + 5064]
                        mov              qword ptr [1879052640], rax
                        mov              qword ptr [1879052648], rdx
                        mov              qword ptr [rbp + 5040], rax
                        mov              qword ptr [rbp + 5048], rdx
                                                                                        jmp   xchain313_n28_α
#         C = POS(0) ARBNO(X eol (epsilon . *EMIT())) RPOS(0)
# IR_LIT_STRING
xchain313_n28_α:
                        mov              qword ptr [rbp + 5200], 1
                        mov              rax, qword ptr [rip + .Lx350_0]
                        mov              qword ptr [rbp + 5208], rax
                                                                                        jmp   xchain313_n29_α
.Lx350_0:
                        .quad            .Lx350_0_s
.Lx350_0_s:
                        .string          "PAT$7"
xchain313_n29_α:
# BOX IR_CALL SNO$MKPAT(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5200] -> [zr+5168]
                        mov              rax, qword ptr [rbp + 5200]
                        mov              qword ptr [rbp + 5168], rax
                        mov              rax, qword ptr [rbp + 5208]
                        mov              qword ptr [rbp + 5176], rax
                        .section         .rodata
.Lrkfn352:              .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn352]
                        lea              rsi, [rbp + 5168]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5152], rax
                        mov              qword ptr [rbp + 5160], rdx
                        cmp              eax, 99
                                                                                        je    xchain313_n31_α
                                                                                        jmp   xchain313_n30_α
xchain313_n29_β:
                                                                                        jmp   xchain313_n31_α
# IR_ASSIGN gva
xchain313_n30_α:
                        mov              rax, qword ptr [rbp + 5152]
                        mov              rdx, qword ptr [rbp + 5160]
                        mov              qword ptr [1879052656], rax
                        mov              qword ptr [1879052664], rdx
                        mov              qword ptr [rbp + 5136], rax
                        mov              qword ptr [rbp + 5144], rdx
                                                                                        jmp   xchain313_n31_α
#         &TRIM = 1
# IR_LIT_STRING
xchain313_n31_α:
                        mov              qword ptr [rbp + 5296], 1
                        mov              rax, qword ptr [rip + .Lx354_0]
                        mov              qword ptr [rbp + 5304], rax
                                                                                        jmp   xchain313_n32_α
.Lx354_0:
                        .quad            .Lx354_0_s
.Lx354_0_s:
                        .string          "TRIM"
# IR_LIT_INTEGER
xchain313_n32_α:
                        mov              qword ptr [rbp + 5328], 6
                        mov              rax, qword ptr [rip + .Lx355_0]
                        mov              qword ptr [rbp + 5336], rax
                                                                                        jmp   xchain313_n33_α
.Lx355_0:
                        .quad            1
xchain313_n33_α:
# BOX IR_CALL SNO$KWSET(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5296] -> [zr+5248]
                        mov              rax, qword ptr [rbp + 5296]
                        mov              qword ptr [rbp + 5248], rax
                        mov              rax, qword ptr [rbp + 5304]
                        mov              qword ptr [rbp + 5256], rax
# marshal arg1 = producer-box slot [zr+5328] -> [zr+5264]
                        mov              rax, qword ptr [rbp + 5328]
                        mov              qword ptr [rbp + 5264], rax
                        mov              rax, qword ptr [rbp + 5336]
                        mov              qword ptr [rbp + 5272], rax
                        .section         .rodata
.Lrkfn357:              .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn357]
                        lea              rsi, [rbp + 5248]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5232], rax
                        mov              qword ptr [rbp + 5240], rdx
                        cmp              eax, 99
                                                                                        je    xchain313_n34_α
                                                                                        jmp   xchain313_n34_α
xchain313_n33_β:
                                                                                        jmp   xchain313_n34_α
#         nl = CHAR(10)
# IR_LIT_INTEGER
xchain313_n34_α:
                        mov              qword ptr [rbp + 5424], 6
                        mov              rax, qword ptr [rip + .Lx358_0]
                        mov              qword ptr [rbp + 5432], rax
                                                                                        jmp   xchain313_n35_α
.Lx358_0:
                        .quad            10
xchain313_n35_α:
# BOX CALL CHAR(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [zr+5424] -> [zr+5392]
                        mov              rax, qword ptr [rbp + 5424]
                        mov              qword ptr [rbp + 5392], rax
                        mov              rax, qword ptr [rbp + 5432]
                        mov              qword ptr [rbp + 5400], rax
                        .section         .rodata
.Lbynamefn261:          .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn261]
                        lea              rsi, [rbp + 5392]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5376], rax
                        mov              qword ptr [rbp + 5384], rdx
                        cmp              eax, 99
                                                                                        je    xchain313_n37_α
                                                                                        jmp   xchain313_n36_α
xchain313_n35_β:
                                                                                        jmp   xchain313_n37_α
# IR_ASSIGN gva
xchain313_n36_α:
                        mov              rax, qword ptr [rbp + 5376]
                        mov              rdx, qword ptr [rbp + 5384]
                        mov              qword ptr [1879052672], rax
                        mov              qword ptr [1879052680], rdx
                        mov              qword ptr [rbp + 5360], rax
                        mov              qword ptr [rbp + 5368], rdx
                                                                                        jmp   xchain313_n37_α
#         vars = TABLE()
xchain313_n37_α:
# BOX IR_CALL TABLE(...) -> rt_call_arr [operand-marshal, FAIL->ω]
                        .section         .rodata
.Lrkfn362:              .string          "TABLE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn362]
                        lea              rsi, [rbp + 5488]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5472], rax
                        mov              qword ptr [rbp + 5480], rdx
                        cmp              eax, 99
                                                                                        je    xchain313_n39_α
                                                                                        jmp   xchain313_n38_α
xchain313_n37_β:
                                                                                        jmp   xchain313_n39_α
# IR_ASSIGN gva
xchain313_n38_α:
                        mov              rax, qword ptr [rbp + 5472]
                        mov              rdx, qword ptr [rbp + 5480]
                        mov              qword ptr [1879052496], rax
                        mov              qword ptr [1879052504], rdx
                        mov              qword ptr [rbp + 5456], rax
                        mov              qword ptr [rbp + 5464], rdx
                                                                                        jmp   xchain313_n39_α
#         vars['x'] = 1
# IR_VAR
xchain313_n39_α:
                        mov              rax, qword ptr [1879052496]
                        mov              rdx, qword ptr [1879052504]
                        mov              qword ptr [rbp + 5504], rax
                        mov              qword ptr [rbp + 5512], rdx
                                                                                        jmp   xchain313_n40_α
# IR_LIT_STRING
xchain313_n40_α:
                        mov              qword ptr [rbp + 5536], 1
                        mov              rax, qword ptr [rip + .Lx365_0]
                        mov              qword ptr [rbp + 5544], rax
                                                                                        jmp   xchain313_n42_α
.Lx365_0:
                        .quad            .Lx365_0_s
.Lx365_0_s:
                        .string          "x"
#         vars['y'] = 2
# IR_VAR
xchain313_n41_α:
                        mov              rax, qword ptr [1879052496]
                        mov              rdx, qword ptr [1879052504]
                        mov              qword ptr [rbp + 5648], rax
                        mov              qword ptr [rbp + 5656], rdx
                                                                                        jmp   xchain313_n43_α
# IR_SUBSCRIPT x[i] variable
xchain313_n42_α:
                        mov              rdi, qword ptr [rbp + 5504]
                        mov              rsi, qword ptr [rbp + 5512]
                        mov              rdx, qword ptr [rbp + 5536]
                        mov              rcx, qword ptr [rbp + 5544]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain313_n41_α
                        mov              qword ptr [rbp + 5568], rax
                        mov              qword ptr [rbp + 5576], rdx
                                                                                        jmp   xchain313_n45_α
# IR_LIT_STRING
xchain313_n43_α:
                        mov              qword ptr [rbp + 5680], 1
                        mov              rax, qword ptr [rip + .Lx368_0]
                        mov              qword ptr [rbp + 5688], rax
                                                                                        jmp   xchain313_n46_α
.Lx368_0:
                        .quad            .Lx368_0_s
.Lx368_0_s:
                        .string          "y"
#         vars['z'] = 3
# IR_VAR
xchain313_n44_α:
                        mov              rax, qword ptr [1879052496]
                        mov              rdx, qword ptr [1879052504]
                        mov              qword ptr [rbp + 5792], rax
                        mov              qword ptr [rbp + 5800], rdx
                                                                                        jmp   xchain313_n47_α
# IR_LIT_INTEGER
xchain313_n45_α:
                        mov              qword ptr [rbp + 5600], 6
                        mov              rax, qword ptr [rip + .Lx370_0]
                        mov              qword ptr [rbp + 5608], rax
                                                                                        jmp   xchain313_n49_α
.Lx370_0:
                        .quad            1
# IR_SUBSCRIPT x[i] variable
xchain313_n46_α:
                        mov              rdi, qword ptr [rbp + 5648]
                        mov              rsi, qword ptr [rbp + 5656]
                        mov              rdx, qword ptr [rbp + 5680]
                        mov              rcx, qword ptr [rbp + 5688]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain313_n44_α
                        mov              qword ptr [rbp + 5712], rax
                        mov              qword ptr [rbp + 5720], rdx
                                                                                        jmp   xchain313_n50_α
# IR_LIT_STRING
xchain313_n47_α:
                        mov              qword ptr [rbp + 5824], 1
                        mov              rax, qword ptr [rip + .Lx372_0]
                        mov              qword ptr [rbp + 5832], rax
                                                                                        jmp   xchain313_n51_α
.Lx372_0:
                        .quad            .Lx372_0_s
.Lx372_0_s:
                        .string          "z"
# slurp   line = INPUT                            :F(slurp_f)
# IR_VAR
xchain313_n48_α:
                        mov              rdi, qword ptr [rip + .Lx373_0]
                        call             NV_GET_fn@PLT
                        cmp              eax, 99
                                                                                        je    xchain313_n53_α
                        mov              qword ptr [rbp + 5952], rax
                        mov              qword ptr [rbp + 5960], rdx
                                                                                        jmp   xchain313_n52_α
.Lx373_0:
                        .quad            .Lx373_0_s
.Lx373_0_s:
                        .string          "INPUT"
# IR_ASSIGN_VAR
xchain313_n49_α:
                        mov              rdi, qword ptr [rbp + 5568]
                        mov              rsi, qword ptr [rbp + 5576]
                        mov              rdx, qword ptr [rbp + 5600]
                        mov              rcx, qword ptr [rbp + 5608]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain313_n41_α
                        mov              qword ptr [rbp + 5632], rax
                        mov              qword ptr [rbp + 5640], rdx
                                                                                        jmp   xchain313_n41_α
# IR_LIT_INTEGER
xchain313_n50_α:
                        mov              qword ptr [rbp + 5744], 6
                        mov              rax, qword ptr [rip + .Lx375_0]
                        mov              qword ptr [rbp + 5752], rax
                                                                                        jmp   xchain313_n54_α
.Lx375_0:
                        .quad            2
# IR_SUBSCRIPT x[i] variable
xchain313_n51_α:
                        mov              rdi, qword ptr [rbp + 5792]
                        mov              rsi, qword ptr [rbp + 5800]
                        mov              rdx, qword ptr [rbp + 5824]
                        mov              rcx, qword ptr [rbp + 5832]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain313_n48_α
                        mov              qword ptr [rbp + 5856], rax
                        mov              qword ptr [rbp + 5864], rdx
                                                                                        jmp   xchain313_n55_α
# IR_ASSIGN gva
xchain313_n52_α:
                        mov              rax, qword ptr [rbp + 5952]
                        mov              rdx, qword ptr [rbp + 5960]
                        mov              qword ptr [1879052688], rax
                        mov              qword ptr [1879052696], rdx
                        mov              qword ptr [rbp + 5936], rax
                        mov              qword ptr [rbp + 5944], rdx
                                                                                        jmp   xchain313_n56_α
# slurp_f src = src b2 b1
# IR_VAR
xchain313_n53_α:
                        mov              rax, qword ptr [1879052736]
                        mov              rdx, qword ptr [1879052744]
                        mov              qword ptr [rbp + 6976], rax
                        mov              qword ptr [rbp + 6984], rdx
                                                                                        jmp   xchain313_n57_α
# IR_ASSIGN_VAR
xchain313_n54_α:
                        mov              rdi, qword ptr [rbp + 5712]
                        mov              rsi, qword ptr [rbp + 5720]
                        mov              rdx, qword ptr [rbp + 5744]
                        mov              rcx, qword ptr [rbp + 5752]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain313_n44_α
                        mov              qword ptr [rbp + 5776], rax
                        mov              qword ptr [rbp + 5784], rdx
                                                                                        jmp   xchain313_n44_α
# IR_LIT_INTEGER
xchain313_n55_α:
                        mov              qword ptr [rbp + 5888], 6
                        mov              rax, qword ptr [rip + .Lx380_0]
                        mov              qword ptr [rbp + 5896], rax
                                                                                        jmp   xchain313_n59_α
.Lx380_0:
                        .quad            3
#         b1 = b1 line nl
# IR_VAR
xchain313_n56_α:
                        mov              rax, qword ptr [1879052704]
                        mov              rdx, qword ptr [1879052712]
                        mov              qword ptr [rbp + 6064], rax
                        mov              qword ptr [rbp + 6072], rdx
                                                                                        jmp   xchain313_n60_α
# IR_VAR
xchain313_n57_α:
                        mov              rax, qword ptr [1879052720]
                        mov              rdx, qword ptr [1879052728]
                        mov              qword ptr [rbp + 7008], rax
                        mov              qword ptr [rbp + 7016], rdx
                                                                                        jmp   xchain313_n62_α
#         t0 = TIME()
xchain313_n58_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
                        .section         .rodata
.Lrkfn384:              .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn384]
                        lea              rsi, [rbp + 7104]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 7088], rax
                        mov              qword ptr [rbp + 7096], rdx
                        cmp              eax, 99
                                                                                        je    xchain313_n64_α
                                                                                        jmp   xchain313_n63_α
xchain313_n58_β:
                                                                                        jmp   xchain313_n64_α
# IR_ASSIGN_VAR
xchain313_n59_α:
                        mov              rdi, qword ptr [rbp + 5856]
                        mov              rsi, qword ptr [rbp + 5864]
                        mov              rdx, qword ptr [rbp + 5888]
                        mov              rcx, qword ptr [rbp + 5896]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain313_n48_α
                        mov              qword ptr [rbp + 5920], rax
                        mov              qword ptr [rbp + 5928], rdx
                                                                                        jmp   xchain313_n48_α
# IR_VAR
xchain313_n60_α:
                        mov              rax, qword ptr [1879052688]
                        mov              rdx, qword ptr [1879052696]
                        mov              qword ptr [rbp + 6096], rax
                        mov              qword ptr [rbp + 6104], rdx
                                                                                        jmp   xchain313_n65_α
#         GT(SIZE(b1), 8192)                      :F(slurp)
# IR_VAR
xchain313_n61_α:
                        mov              rax, qword ptr [1879052704]
                        mov              rdx, qword ptr [1879052712]
                        mov              qword ptr [rbp + 6336], rax
                        mov              qword ptr [rbp + 6344], rdx
                                                                                        jmp   xchain313_n66_α
xchain313_n62_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 6976]
                        mov              rsi, qword ptr [rbp + 6984]
                        mov              rdx, qword ptr [rbp + 7008]
                        mov              rcx, qword ptr [rbp + 7016]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 6944], rax
                        mov              qword ptr [rbp + 6952], rdx
                                                                                        jmp   xchain313_n67_α
# IR_ASSIGN gva
xchain313_n63_α:
                        mov              rax, qword ptr [rbp + 7088]
                        mov              rdx, qword ptr [rbp + 7096]
                        mov              qword ptr [1879052752], rax
                        mov              qword ptr [1879052760], rdx
                        mov              qword ptr [rbp + 7072], rax
                        mov              qword ptr [rbp + 7080], rdx
                                                                                        jmp   xchain313_n64_α
#         src C                                   :F(bad)
# IR_VAR
xchain313_n64_α:
                        mov              rax, qword ptr [1879052736]
                        mov              rdx, qword ptr [1879052744]
                        mov              qword ptr [rbp + 7200], rax
                        mov              qword ptr [rbp + 7208], rdx
                                                                                        jmp   xchain313_n68_α
xchain313_n65_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 6064]
                        mov              rsi, qword ptr [rbp + 6072]
                        mov              rdx, qword ptr [rbp + 6096]
                        mov              rcx, qword ptr [rbp + 6104]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 6032], rax
                        mov              qword ptr [rbp + 6040], rdx
                                                                                        jmp   xchain313_n70_α
xchain313_n66_α:
# BOX IR_CALL SIZE(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6336] -> [zr+6304]
                        mov              rax, qword ptr [rbp + 6336]
                        mov              qword ptr [rbp + 6304], rax
                        mov              rax, qword ptr [rbp + 6344]
                        mov              qword ptr [rbp + 6312], rax
                        .section         .rodata
.Lrkfn393:              .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn393]
                        lea              rsi, [rbp + 6304]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 6288], rax
                        mov              qword ptr [rbp + 6296], rdx
                        cmp              eax, 99
                                                                                        je    xchain313_n48_α
                                                                                        jmp   xchain313_n71_α
xchain313_n66_β:
                                                                                        jmp   xchain313_n48_α
# IR_VAR
xchain313_n67_α:
                        mov              rax, qword ptr [1879052704]
                        mov              rdx, qword ptr [1879052712]
                        mov              qword ptr [rbp + 7040], rax
                        mov              qword ptr [rbp + 7048], rdx
                                                                                        jmp   xchain313_n72_α
# IR_MATCH_HEAD
xchain313_n68_α:
                        mov              qword ptr [rbp + 7176], rbp
                        mov              rdi, qword ptr [rbp + 7200]
                        mov              rsi, qword ptr [rbp + 7208]
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [rbp + 7168], r12
                        mov              qword ptr [rbp + 7152], rsp
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 7144], rax
                        mov              dword ptr [rbp + 7136], 0
.Lx396_0:
                        mov              r14d, dword ptr [rbp + 7136]
                                                                                        jmp   xchain313_n73_α
xchain313_n68_β:
                        add              dword ptr [rbp + 7136], 1
                        mov              eax, dword ptr [rbp + 7136]
                        cmp              eax, r15d
                                                                                        jg    .Lx396_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx396_1
                                                                                        jmp   .Lx396_0
.Lx396_1:
                        mov              rax, qword ptr [rbp + 7144]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 7152]
                        mov              r12, qword ptr [rbp + 7168]
                        mov              rbp, qword ptr [rbp + 7176]
                                                                                        jmp   xchain313_n69_α
# bad     t1 = TIME()
xchain313_n69_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
                        .section         .rodata
.Lrkfn398:              .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn398]
                        lea              rsi, [rbp + 7488]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 7472], rax
                        mov              qword ptr [rbp + 7480], rdx
                        cmp              eax, 99
                                                                                        je    xchain313_n75_α
                                                                                        jmp   xchain313_n74_α
xchain313_n69_β:
                                                                                        jmp   xchain313_n75_α
# IR_VAR
xchain313_n70_α:
                        mov              rax, qword ptr [1879052672]
                        mov              rdx, qword ptr [1879052680]
                        mov              qword ptr [rbp + 6128], rax
                        mov              qword ptr [rbp + 6136], rdx
                                                                                        jmp   xchain313_n76_α
# IR_LIT_INTEGER
xchain313_n71_α:
                        mov              qword ptr [rbp + 6256], 6
                        mov              rax, qword ptr [rip + .Lx400_0]
                        mov              qword ptr [rbp + 6264], rax
                                                                                        jmp   xchain313_n77_α
.Lx400_0:
                        .quad            8192
xchain313_n72_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 6944]
                        mov              rsi, qword ptr [rbp + 6952]
                        mov              rdx, qword ptr [rbp + 7040]
                        mov              rcx, qword ptr [rbp + 7048]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 6912], rax
                        mov              qword ptr [rbp + 6920], rdx
                                                                                        jmp   xchain313_n78_α
# IR_MATCH_DEFER (ZS-2 jmp-entry)
xchain313_n73_α:
                        lea              rsi, [rip + g_sno_defer_cells+104]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx402_11
                        mov              rax, qword ptr [1879052656]
                        mov              rdx, qword ptr [1879052664]
                        cmp              eax, 3
                                                                                        jne   .Lx402_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx402_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx402_10
.Lx402_9:
                        xor              eax, eax
.Lx402_10:
                        lea              rsi, [rip + g_sno_defer_cells+104]
                        mov              qword ptr [rsi + 0], rax
.Lx402_11:
                        test             rax, rax
                                                                                        jz    .Lx402_0
                        mov              r8d, 1
                        lea              rcx, [rip + .Lx402_4]
                        lea              rdx, [rip + .Lx402_5]
                                                                                        jmp   rax
.Lx402_4:
                        lea              rcx, [rip + g_scan_hit_start]
                        mov              rax, qword ptr [rcx]
                        mov              dword ptr [rbp + 7136], eax
                                                                                        jmp   xchain313_n79_α
.Lx402_5:
                                                                                        jmp   xchain313_n68_β
.Lx402_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S15]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx402_2:
                        test             rax, rax
                                                                                        je    .Lx402_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx402_7]
                        lea              rdx, [rip + .Lx402_8]
                                                                                        jmp   rax
.Lx402_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx402_2
.Lx402_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx402_2
.Lx402_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    xchain313_n68_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx402_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   xchain313_n79_α
.Lx402_6:
                        add              rsp, 16
                                                                                        jmp   xchain313_n68_β
xchain313_n73_β:
                                                                                        jmp   qword ptr [rsp]
# IR_ASSIGN gva
xchain313_n74_α:
                        mov              rax, qword ptr [rbp + 7472]
                        mov              rdx, qword ptr [rbp + 7480]
                        mov              qword ptr [1879052768], rax
                        mov              qword ptr [1879052776], rdx
                        mov              qword ptr [rbp + 7456], rax
                        mov              qword ptr [rbp + 7464], rdx
                                                                                        jmp   xchain313_n75_α
#         OUTPUT = 'Boo!'
# IR_LIT_STRING
xchain313_n75_α:
                        mov              qword ptr [rbp + 7520], 1
                        mov              rax, qword ptr [rip + .Lx404_0]
                        mov              qword ptr [rbp + 7528], rax
                                                                                        jmp   xchain313_n80_α
.Lx404_0:
                        .quad            .Lx404_0_s
.Lx404_0_s:
                        .string          "Boo!"
xchain313_n76_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 6032]
                        mov              rsi, qword ptr [rbp + 6040]
                        mov              rdx, qword ptr [rbp + 6128]
                        mov              rcx, qword ptr [rbp + 6136]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 6000], rax
                        mov              qword ptr [rbp + 6008], rdx
                                                                                        jmp   xchain313_n81_α
# IR_COERCE_NUMERIC
xchain313_n77_α:
                        mov              eax, dword ptr [rbp + 6288]
                        cmp              eax, 7
                                                                                        je    .Lx407_1
                        cmp              eax, 6
                                                                                        jne   .Lx407_0
                        mov              eax, dword ptr [rbp + 6256]
                        cmp              eax, 6
                                                                                        jne   .Lx407_0
.Lx407_1:
                        mov              rax, qword ptr [rbp + 6288]
                        mov              qword ptr [rbp + 6224], rax
                        mov              rax, qword ptr [rbp + 6296]
                        mov              qword ptr [rbp + 6232], rax
                                                                                        jmp   xchain313_n82_α
.Lx407_0:
                        lea              rdi, [rbp + 6288]
                        lea              rsi, [rbp + 6256]
                        lea              rdx, [rbp + 6224]
                        mov              rcx, 111
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   xchain313_n82_α
# IR_ASSIGN gva
xchain313_n78_α:
                        mov              rax, qword ptr [rbp + 6912]
                        mov              rdx, qword ptr [rbp + 6920]
                        mov              qword ptr [1879052736], rax
                        mov              qword ptr [1879052744], rdx
                        mov              qword ptr [rbp + 6896], rax
                        mov              qword ptr [rbp + 6904], rdx
                                                                                        jmp   xchain313_n58_α
# IR_MATCH_RELEASE
xchain313_n79_α:
                        mov              rax, qword ptr [rbp + 7144]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 7152]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rsp + 7200]
                        mov              rsi, r12
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx410_1:
                        test             rax, rax
                                                                                        je    .Lx410_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx410_3]
                        lea              rdx, [rip + .Lx410_4]
                                                                                        jmp   rax
.Lx410_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx410_1
.Lx410_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx410_1
.Lx410_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + 7168]
                        mov              rbp, qword ptr [rbp + 7176]
                                                                                        jmp   xchain313_n83_α
# IR_ASSIGN global
xchain313_n80_α:
                        mov              rsi, qword ptr [rbp + 7520]
                        mov              rdx, qword ptr [rbp + 7528]
                        mov              rdi, qword ptr [rip + .Lx411_0]
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rbp + 7504], rax
                        mov              qword ptr [rbp + 7512], rdx
                                                                                        jmp   xchain313_n84_α
.Lx411_0:
                        .quad            .Lx411_0_s
.Lx411_0_s:
                        .string          "OUTPUT"
# IR_ASSIGN gva
xchain313_n81_α:
                        mov              rax, qword ptr [rbp + 6000]
                        mov              rdx, qword ptr [rbp + 6008]
                        mov              qword ptr [1879052704], rax
                        mov              qword ptr [1879052712], rdx
                        mov              qword ptr [rbp + 5984], rax
                        mov              qword ptr [rbp + 5992], rdx
                                                                                        jmp   xchain313_n61_α
# IR_COERCE_NUMERIC
xchain313_n82_α:
                        mov              eax, dword ptr [rbp + 6256]
                        cmp              eax, 7
                                                                                        je    .Lx414_1
                        cmp              eax, 6
                                                                                        jne   .Lx414_0
                        mov              eax, dword ptr [rbp + 6288]
                        cmp              eax, 6
                                                                                        jne   .Lx414_0
.Lx414_1:
                        mov              rax, qword ptr [rbp + 6256]
                        mov              qword ptr [rbp + 6192], rax
                        mov              rax, qword ptr [rbp + 6264]
                        mov              qword ptr [rbp + 6200], rax
                                                                                        jmp   xchain313_n85_α
.Lx414_0:
                        lea              rdi, [rbp + 6256]
                        lea              rsi, [rbp + 6288]
                        lea              rdx, [rbp + 6192]
                        mov              rcx, 112
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   xchain313_n85_α
#         t1 = TIME()
xchain313_n83_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
                        .section         .rodata
.Lrkfn416:              .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn416]
                        lea              rsi, [rbp + 7264]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 7248], rax
                        mov              qword ptr [rbp + 7256], rdx
                        cmp              eax, 99
                                                                                        je    xchain313_n87_α
                                                                                        jmp   xchain313_n86_α
xchain313_n83_β:
                                                                                        jmp   xchain313_n87_α
#         TERMINAL = 'match_ms=' (t1 - t0)
# IR_LIT_STRING
xchain313_n84_α:
                        mov              qword ptr [rbp + 7600], 1
                        mov              rax, qword ptr [rip + .Lx417_0]
                        mov              qword ptr [rbp + 7608], rax
                                                                                        jmp   xchain313_n88_α
.Lx417_0:
                        .quad            .Lx417_0_s
.Lx417_0_s:
                        .string          "match_ms="
# IR_CMP_TEST
xchain313_n85_α:
                        lea              rdi, [rbp + 6224]
                        lea              rsi, [rbp + 6192]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jle   xchain313_n48_α
                        mov              qword ptr [rbp + 6160], 0
                        mov              qword ptr [rbp + 6168], 0
                                                                                        jmp   xchain313_n89_α
# IR_ASSIGN gva
xchain313_n86_α:
                        mov              rax, qword ptr [rbp + 7248]
                        mov              rdx, qword ptr [rbp + 7256]
                        mov              qword ptr [1879052768], rax
                        mov              qword ptr [1879052776], rdx
                        mov              qword ptr [rbp + 7232], rax
                        mov              qword ptr [rbp + 7240], rdx
                                                                                        jmp   xchain313_n87_α
#         TERMINAL = 'match_ms=' (t1 - t0)        :(END)
# IR_LIT_STRING
xchain313_n87_α:
                        mov              qword ptr [rbp + 7328], 1
                        mov              rax, qword ptr [rip + .Lx421_0]
                        mov              qword ptr [rbp + 7336], rax
                                                                                        jmp   xchain313_n90_α
.Lx421_0:
                        .quad            .Lx421_0_s
.Lx421_0_s:
                        .string          "match_ms="
# IR_VAR
xchain313_n88_α:
                        mov              rax, qword ptr [1879052768]
                        mov              rdx, qword ptr [1879052776]
                        mov              qword ptr [rbp + 7664], rax
                        mov              qword ptr [rbp + 7672], rdx
                                                                                        jmp   xchain313_n91_α
#         b2 = b2 b1
# IR_VAR
xchain313_n89_α:
                        mov              rax, qword ptr [1879052720]
                        mov              rdx, qword ptr [1879052728]
                        mov              qword ptr [rbp + 6416], rax
                        mov              qword ptr [rbp + 6424], rdx
                                                                                        jmp   xchain313_n92_α
# IR_VAR
xchain313_n90_α:
                        mov              rax, qword ptr [1879052768]
                        mov              rdx, qword ptr [1879052776]
                        mov              qword ptr [rbp + 7392], rax
                        mov              qword ptr [rbp + 7400], rdx
                                                                                        jmp   xchain313_n94_α
# IR_VAR
xchain313_n91_α:
                        mov              rax, qword ptr [1879052752]
                        mov              rdx, qword ptr [1879052760]
                        mov              qword ptr [rbp + 7696], rax
                        mov              qword ptr [rbp + 7704], rdx
                                                                                        jmp   xchain313_n95_α
# IR_VAR
xchain313_n92_α:
                        mov              rax, qword ptr [1879052704]
                        mov              rdx, qword ptr [1879052712]
                        mov              qword ptr [rbp + 6448], rax
                        mov              qword ptr [rbp + 6456], rdx
                                                                                        jmp   xchain313_n96_α
#         b1 =
# IR_LIT_STRING
xchain313_n93_α:
                        mov              qword ptr [rbp + 6496], 1
                        mov              rax, qword ptr [rip + .Lx427_0]
                        mov              qword ptr [rbp + 6504], rax
                                                                                        jmp   xchain313_n97_α
.Lx427_0:
                        .quad            .Lx427_0_s
.Lx427_0_s:
                        .string          ""
# IR_VAR
xchain313_n94_α:
                        mov              rax, qword ptr [1879052752]
                        mov              rdx, qword ptr [1879052760]
                        mov              qword ptr [rbp + 7424], rax
                        mov              qword ptr [rbp + 7432], rdx
                                                                                        jmp   xchain313_n98_α
xchain313_n95_α:
# IR_BINOP_ARITH
                        mov              eax, dword ptr [rbp + 7664]
                        cmp              eax, 100
                                                                                        je    .Lx429_0
                        mov              eax, dword ptr [rbp + 7696]
                        cmp              eax, 100
                                                                                        je    .Lx429_0
                        mov              eax, dword ptr [rbp + 7664]
                        cmp              eax, 6
                                                                                        jne   .Lx429_2
                        mov              eax, dword ptr [rbp + 7696]
                        cmp              eax, 6
                                                                                        jne   .Lx429_2
.Lx429_1:
                        mov              rax, qword ptr [rbp + 7672]
                        mov              rcx, qword ptr [rbp + 7704]
                        sub              rax, rcx
                        mov              qword ptr [rbp + 7632], 6
                        mov              qword ptr [rbp + 7640], rax
                                                                                        jmp   xchain313_n99_α
.Lx429_0:
                        mov              rdi, qword ptr [rbp + 7664]
                        mov              rsi, qword ptr [rbp + 7672]
                        mov              rdx, qword ptr [rbp + 7696]
                        mov              rcx, qword ptr [rbp + 7704]
                        mov              r8d, 1
                        lea              r9, [rbp + 7632]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   xchain313_n99_α
.Lx429_2:
                        mov              rdi, qword ptr [rbp + 7664]
                        mov              rsi, qword ptr [rbp + 7672]
                        mov              rdx, qword ptr [rbp + 7696]
                        mov              rcx, qword ptr [rbp + 7704]
                        mov              r8d, 1
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    main_γ
                        mov              qword ptr [rbp + 7632], rax
                        mov              qword ptr [rbp + 7640], rdx
                                                                                        jmp   xchain313_n99_α
xchain313_n95_β:
                                                                                        jmp   main_γ
xchain313_n96_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 6416]
                        mov              rsi, qword ptr [rbp + 6424]
                        mov              rdx, qword ptr [rbp + 6448]
                        mov              rcx, qword ptr [rbp + 6456]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 6384], rax
                        mov              qword ptr [rbp + 6392], rdx
                                                                                        jmp   xchain313_n100_α
# IR_ASSIGN gva
xchain313_n97_α:
                        mov              rax, qword ptr [rbp + 6496]
                        mov              rdx, qword ptr [rbp + 6504]
                        mov              qword ptr [1879052704], rax
                        mov              qword ptr [1879052712], rdx
                        mov              qword ptr [rbp + 6480], rax
                        mov              qword ptr [rbp + 6488], rdx
                                                                                        jmp   xchain313_n101_α
xchain313_n98_α:
# IR_BINOP_ARITH
                        mov              eax, dword ptr [rbp + 7392]
                        cmp              eax, 100
                                                                                        je    .Lx432_0
                        mov              eax, dword ptr [rbp + 7424]
                        cmp              eax, 100
                                                                                        je    .Lx432_0
                        mov              eax, dword ptr [rbp + 7392]
                        cmp              eax, 6
                                                                                        jne   .Lx432_2
                        mov              eax, dword ptr [rbp + 7424]
                        cmp              eax, 6
                                                                                        jne   .Lx432_2
.Lx432_1:
                        mov              rax, qword ptr [rbp + 7400]
                        mov              rcx, qword ptr [rbp + 7432]
                        sub              rax, rcx
                        mov              qword ptr [rbp + 7360], 6
                        mov              qword ptr [rbp + 7368], rax
                                                                                        jmp   xchain313_n102_α
.Lx432_0:
                        mov              rdi, qword ptr [rbp + 7392]
                        mov              rsi, qword ptr [rbp + 7400]
                        mov              rdx, qword ptr [rbp + 7424]
                        mov              rcx, qword ptr [rbp + 7432]
                        mov              r8d, 1
                        lea              r9, [rbp + 7360]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   xchain313_n102_α
.Lx432_2:
                        mov              rdi, qword ptr [rbp + 7392]
                        mov              rsi, qword ptr [rbp + 7400]
                        mov              rdx, qword ptr [rbp + 7424]
                        mov              rcx, qword ptr [rbp + 7432]
                        mov              r8d, 1
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    main_γ
                        mov              qword ptr [rbp + 7360], rax
                        mov              qword ptr [rbp + 7368], rdx
                                                                                        jmp   xchain313_n102_α
xchain313_n98_β:
                                                                                        jmp   main_γ
xchain313_n99_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 7600]
                        mov              rsi, qword ptr [rbp + 7608]
                        mov              rdx, qword ptr [rbp + 7632]
                        mov              rcx, qword ptr [rbp + 7640]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 7568], rax
                        mov              qword ptr [rbp + 7576], rdx
                                                                                        jmp   xchain313_n103_α
# IR_ASSIGN gva
xchain313_n100_α:
                        mov              rax, qword ptr [rbp + 6384]
                        mov              rdx, qword ptr [rbp + 6392]
                        mov              qword ptr [1879052720], rax
                        mov              qword ptr [1879052728], rdx
                        mov              qword ptr [rbp + 6368], rax
                        mov              qword ptr [rbp + 6376], rdx
                                                                                        jmp   xchain313_n93_α
#         GT(SIZE(b2), 262144)                    :F(slurp)
# IR_VAR
xchain313_n101_α:
                        mov              rax, qword ptr [1879052720]
                        mov              rdx, qword ptr [1879052728]
                        mov              qword ptr [rbp + 6704], rax
                        mov              qword ptr [rbp + 6712], rdx
                                                                                        jmp   xchain313_n104_α
xchain313_n102_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 7328]
                        mov              rsi, qword ptr [rbp + 7336]
                        mov              rdx, qword ptr [rbp + 7360]
                        mov              rcx, qword ptr [rbp + 7368]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 7296], rax
                        mov              qword ptr [rbp + 7304], rdx
                                                                                        jmp   xchain313_n105_α
# IR_ASSIGN global
xchain313_n103_α:
                        mov              rsi, qword ptr [rbp + 7568]
                        mov              rdx, qword ptr [rbp + 7576]
                        mov              rdi, qword ptr [rip + .Lx437_0]
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rbp + 7552], rax
                        mov              qword ptr [rbp + 7560], rdx
                                                                                        jmp   main_γ
.Lx437_0:
                        .quad            .Lx437_0_s
.Lx437_0_s:
                        .string          "TERMINAL"
xchain313_n104_α:
# BOX IR_CALL SIZE(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6704] -> [zr+6672]
                        mov              rax, qword ptr [rbp + 6704]
                        mov              qword ptr [rbp + 6672], rax
                        mov              rax, qword ptr [rbp + 6712]
                        mov              qword ptr [rbp + 6680], rax
                        .section         .rodata
.Lrkfn439:              .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn439]
                        lea              rsi, [rbp + 6672]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 6656], rax
                        mov              qword ptr [rbp + 6664], rdx
                        cmp              eax, 99
                                                                                        je    xchain313_n48_α
                                                                                        jmp   xchain313_n106_α
xchain313_n104_β:
                                                                                        jmp   xchain313_n48_α
# IR_ASSIGN global
xchain313_n105_α:
                        mov              rsi, qword ptr [rbp + 7296]
                        mov              rdx, qword ptr [rbp + 7304]
                        mov              rdi, qword ptr [rip + .Lx440_0]
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rbp + 7280], rax
                        mov              qword ptr [rbp + 7288], rdx
                                                                                        jmp   main_γ
.Lx440_0:
                        .quad            .Lx440_0_s
.Lx440_0_s:
                        .string          "TERMINAL"
# IR_LIT_INTEGER
xchain313_n106_α:
                        mov              qword ptr [rbp + 6624], 6
                        mov              rax, qword ptr [rip + .Lx441_0]
                        mov              qword ptr [rbp + 6632], rax
                                                                                        jmp   xchain313_n107_α
.Lx441_0:
                        .quad            262144
# IR_COERCE_NUMERIC
xchain313_n107_α:
                        mov              eax, dword ptr [rbp + 6656]
                        cmp              eax, 7
                                                                                        je    .Lx443_1
                        cmp              eax, 6
                                                                                        jne   .Lx443_0
                        mov              eax, dword ptr [rbp + 6624]
                        cmp              eax, 6
                                                                                        jne   .Lx443_0
.Lx443_1:
                        mov              rax, qword ptr [rbp + 6656]
                        mov              qword ptr [rbp + 6592], rax
                        mov              rax, qword ptr [rbp + 6664]
                        mov              qword ptr [rbp + 6600], rax
                                                                                        jmp   xchain313_n108_α
.Lx443_0:
                        lea              rdi, [rbp + 6656]
                        lea              rsi, [rbp + 6624]
                        lea              rdx, [rbp + 6592]
                        mov              rcx, 111
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   xchain313_n108_α
# IR_COERCE_NUMERIC
xchain313_n108_α:
                        mov              eax, dword ptr [rbp + 6624]
                        cmp              eax, 7
                                                                                        je    .Lx445_1
                        cmp              eax, 6
                                                                                        jne   .Lx445_0
                        mov              eax, dword ptr [rbp + 6656]
                        cmp              eax, 6
                                                                                        jne   .Lx445_0
.Lx445_1:
                        mov              rax, qword ptr [rbp + 6624]
                        mov              qword ptr [rbp + 6560], rax
                        mov              rax, qword ptr [rbp + 6632]
                        mov              qword ptr [rbp + 6568], rax
                                                                                        jmp   xchain313_n109_α
.Lx445_0:
                        lea              rdi, [rbp + 6624]
                        lea              rsi, [rbp + 6656]
                        lea              rdx, [rbp + 6560]
                        mov              rcx, 112
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   xchain313_n109_α
# IR_CMP_TEST
xchain313_n109_α:
                        lea              rdi, [rbp + 6592]
                        lea              rsi, [rbp + 6560]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jle   xchain313_n48_α
                        mov              qword ptr [rbp + 6528], 0
                        mov              qword ptr [rbp + 6536], 0
                                                                                        jmp   xchain313_n110_α
#         src = src b2
# IR_VAR
xchain313_n110_α:
                        mov              rax, qword ptr [1879052736]
                        mov              rdx, qword ptr [1879052744]
                        mov              qword ptr [rbp + 6784], rax
                        mov              qword ptr [rbp + 6792], rdx
                                                                                        jmp   xchain313_n111_α
# IR_VAR
xchain313_n111_α:
                        mov              rax, qword ptr [1879052720]
                        mov              rdx, qword ptr [1879052728]
                        mov              qword ptr [rbp + 6816], rax
                        mov              qword ptr [rbp + 6824], rdx
                                                                                        jmp   xchain313_n113_α
#         b2 =                                    :(slurp)
# IR_LIT_STRING
xchain313_n112_α:
                        mov              qword ptr [rbp + 6864], 1
                        mov              rax, qword ptr [rip + .Lx450_0]
                        mov              qword ptr [rbp + 6872], rax
                                                                                        jmp   xchain313_n114_α
.Lx450_0:
                        .quad            .Lx450_0_s
.Lx450_0_s:
                        .string          ""
xchain313_n113_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 6784]
                        mov              rsi, qword ptr [rbp + 6792]
                        mov              rdx, qword ptr [rbp + 6816]
                        mov              rcx, qword ptr [rbp + 6824]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 6752], rax
                        mov              qword ptr [rbp + 6760], rdx
                                                                                        jmp   xchain313_n115_α
# IR_ASSIGN gva
xchain313_n114_α:
                        mov              rax, qword ptr [rbp + 6864]
                        mov              rdx, qword ptr [rbp + 6872]
                        mov              qword ptr [1879052720], rax
                        mov              qword ptr [1879052728], rdx
                        mov              qword ptr [rbp + 6848], rax
                        mov              qword ptr [rbp + 6856], rdx
                                                                                        jmp   xchain313_n48_α
# IR_ASSIGN gva
xchain313_n115_α:
                        mov              rax, qword ptr [rbp + 6752]
                        mov              rdx, qword ptr [rbp + 6760]
                        mov              qword ptr [1879052736], rax
                        mov              qword ptr [1879052744], rdx
                        mov              qword ptr [rbp + 6736], rax
                        mov              qword ptr [rbp + 6744], rdx
                                                                                        jmp   xchain313_n112_α
main_β:
                                                                                        jmp   main_ω
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, qword ptr [rbp + 7736]
                        mov              rbp, [rsp + 65536]
                        add              rsp, 65544
                        ret
main_ω:
                        mov              rsp, qword ptr [rbp + 7736]
                        mov              dword ptr [rsp+0], 99
                        mov              dword ptr [rsp+4], 0
                        mov              qword ptr [rsp+8], 0
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 65536]
                        add              rsp, 65544
                        ret
                        .section         .rodata
.S0:                    .string          "*PSH"
.S1:                    .string          "V"
.S2:                    .string          "I"
.S3:                    .string          "X"
.S4:                    .string          "A"
.S5:                    .string          "F"
.S6:                    .string          "*NEG"
.S7:                    .string          "*MUL"
.S8:                    .string          "*DIV"
.S9:                    .string          "T"
.S10:                   .string          "*ADD"
.S11:                   .string          "*SUB"
.S12:                   .string          "epsilon"
.S13:                   .string          "eol"
.S14:                   .string          "*EMIT"
.S15:                   .string          "C"
                        .text
                        .section         .rodata
.C0:
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
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
.C1:
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
