  .intel_syntax noprefix
  .text
  .globl proc_EMIT_α
proc_EMIT_α:
#=======================================================================================================================
    .global proc_EMIT_α
    .global proc_EMIT_β
    .global proc_EMIT_γ
    .global proc_EMIT_ω
  sub rsp, 464
  mov [rsp + 440], rcx
  mov [rsp + 448], rdx
  mov [rsp + 456], rbp
  mov rbp, rsp
  mov qword ptr [rsp], 0
  mov qword ptr [rsp + 8], 0
  mov qword ptr [rsp + 416], 0
  mov qword ptr [rsp + 424], rsp
proc_EMIT_α_body:
# EMIT    OUTPUT = DRF(S[1])
# IR_VAR
xchain0_n0_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        jmp              xchain0_n1_α
# IR_LIT_INTEGER
xchain0_n1_α:
                        mov              qword ptr [rbp + 192], 6
                        mov              rax, qword ptr [rip + .Lx2_0]
                        mov              qword ptr [rbp + 200], rax
                        jmp              xchain0_n3_α
.Lx2_0:
                        .quad            1
#         sp = 0
# IR_LIT_INTEGER
xchain0_n2_α:
                        mov              qword ptr [rbp + 288], 6
                        mov              rax, qword ptr [rip + .Lx3_0]
                        mov              qword ptr [rbp + 296], rax
                        jmp              xchain0_n4_α
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
                        je               xchain0_n2_α
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        jmp              xchain0_n5_α
# IR_ASSIGN gva
xchain0_n4_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        mov              qword ptr [1879052464], rax
                        mov              qword ptr [1879052472], rdx
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        jmp              xchain0_n6_α
# IR_DEREF variable -> value
xchain0_n5_α:
                        mov              rdi, qword ptr [rbp + 224]
                        mov              rsi, qword ptr [rbp + 232]
                        call             rt_deref@PLT
                        cmp              eax, 99
                        je               xchain0_n2_α
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        jmp              xchain0_n7_α
#         EMIT = .dm                              :(NRETURN)
# IR_LIT_STRING
xchain0_n6_α:
                        mov              qword ptr [rbp + 384], 1
                        mov              rax, qword ptr [rip + .Lx7_0]
                        mov              qword ptr [rbp + 392], rax
                        jmp              xchain0_n8_α
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
                        je               .Lx9_5
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx9_6]
                        lea              rdx, [rip + .Lx9_7]
                        jmp              rax
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
                        jmp              .Lx9_2
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
                        jmp              .Lx9_2
.Lx9_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                        jne              .Lx9_20
                        mov              rax, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                        jmp              .Lx9_21
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
                        je               .Lx9_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx9_3]
                        lea              rdx, [rip + .Lx9_4]
                        jmp              rax
.Lx9_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        jmp              .Lx9_2
.Lx9_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        jmp              .Lx9_2
.Lx9_1:
                        call             rt_faildescr@PLT
.Lx9_2:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                        je               xchain0_n2_α
                        jmp              xchain0_n9_α
xchain0_n7_β:
                        jmp              xchain0_n2_α
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
                        je               xchain0_n11_α
                        jmp              xchain0_n10_α
xchain0_n8_β:
                        jmp              xchain0_n11_α
# IR_ASSIGN global
xchain0_n9_α:
                        mov              rsi, qword ptr [rbp + 112]
                        mov              rdx, qword ptr [rbp + 120]
                        mov              rdi, qword ptr [rip + .Lx12_0]
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        jmp              xchain0_n2_α
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
                        jmp              xchain0_n11_α
# IR_LIT_STRING
xchain0_n11_α:
                        mov              qword ptr [rbp + 16], 1
                        mov              rax, qword ptr [rip + .Lx14_0]
                        mov              qword ptr [rbp + 24], rax
                        jmp              xchain0_n12_α
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
                        je               proc_EMIT_ω
                        jmp              proc_EMIT_γ
xchain0_n12_β:
                        jmp              proc_EMIT_ω
proc_EMIT_res:
add rsp, 8
pop rbp
proc_EMIT_β:
jmp proc_EMIT_ω
proc_EMIT_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 440]
lea rsp, [rbp + 464]
mov rbp, [rbp + 456]
jmp rax
proc_EMIT_ω:
mov rax, [rbp + 448]
lea rsp, [rbp + 464]
mov rbp, [rbp + 456]
jmp rax
  .globl proc_PSH_α
proc_PSH_α:
#=======================================================================================================================
    .global proc_PSH_α
    .global proc_PSH_β
    .global proc_PSH_γ
    .global proc_PSH_ω
  sub rsp, 368
  mov [rsp + 344], rcx
  mov [rsp + 352], rdx
  mov [rsp + 360], rbp
  mov rbp, rsp
  mov qword ptr [rsp], 0
  mov qword ptr [rsp + 8], 0
  mov qword ptr [rsp + 320], 0
  mov qword ptr [rsp + 328], rsp
proc_PSH_α_body:
# PSH     sp = sp + 1
# IR_VAR
xchain17_n0_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        jmp              xchain17_n1_α
# IR_LIT_INTEGER
xchain17_n1_α:
                        mov              qword ptr [rbp + 176], 6
                        mov              rax, qword ptr [rip + .Lx19_0]
                        mov              qword ptr [rbp + 184], rax
                        jmp              xchain17_n3_α
.Lx19_0:
                        .quad            1
#         PSH = .S[sp]                            :(NRETURN)
# IR_VAR
xchain17_n2_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        jmp              xchain17_n4_α
xchain17_n3_α:
# IR_BINOP_ARITH
                        mov              eax, dword ptr [rbp + 144]
                        cmp              eax, 100
                        je               .Lx21_0
                        mov              eax, dword ptr [rbp + 144]
                        cmp              eax, 6
                        jne              .Lx21_2
.Lx21_1:
                        mov              rax, qword ptr [rbp + 152]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 112], 6
                        mov              qword ptr [rbp + 120], rax
                        jmp              xchain17_n6_α
.Lx21_0:
                        mov              rdi, qword ptr [rbp + 144]
                        mov              rsi, qword ptr [rbp + 152]
                        mov              rdx, qword ptr [rbp + 176]
                        mov              rcx, qword ptr [rbp + 184]
                        mov              r8d, 0
                        lea              r9, [rbp + 112]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                        jne              xchain17_n6_α
.Lx21_2:
                        mov              rdi, qword ptr [rbp + 144]
                        mov              rsi, qword ptr [rbp + 152]
                        mov              rdx, qword ptr [rbp + 176]
                        mov              rcx, qword ptr [rbp + 184]
                        mov              r8d, 0
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                        je               xchain17_n2_α
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        jmp              xchain17_n6_α
xchain17_n3_β:
                        jmp              xchain17_n2_α
# IR_VAR
xchain17_n4_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        jmp              xchain17_n7_α
# IR_LIT_STRING
xchain17_n5_α:
                        mov              qword ptr [rbp + 16], 1
                        mov              rax, qword ptr [rip + .Lx23_0]
                        mov              qword ptr [rbp + 24], rax
                        jmp              xchain17_n8_α
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
                        jmp              xchain17_n2_α
# IR_SUBSCRIPT x[i] variable
xchain17_n7_α:
                        mov              rdi, qword ptr [rbp + 224]
                        mov              rsi, qword ptr [rbp + 232]
                        mov              rdx, qword ptr [rbp + 256]
                        mov              rcx, qword ptr [rbp + 264]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                        je               xchain17_n5_α
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        jmp              xchain17_n9_α
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
                        je               proc_PSH_ω
                        jmp              proc_PSH_γ
xchain17_n8_β:
                        jmp              proc_PSH_ω
# IR_ASSIGN gva
xchain17_n9_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        mov              qword ptr [1879052304], rax
                        mov              qword ptr [1879052312], rdx
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        jmp              xchain17_n5_α
proc_PSH_res:
add rsp, 8
pop rbp
proc_PSH_β:
jmp proc_PSH_ω
proc_PSH_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 344]
lea rsp, [rbp + 368]
mov rbp, [rbp + 360]
jmp rax
proc_PSH_ω:
mov rax, [rbp + 352]
lea rsp, [rbp + 368]
mov rbp, [rbp + 360]
jmp rax
  .globl proc_DRF_α
proc_DRF_α:
#=======================================================================================================================
    .global proc_DRF_α
    .global proc_DRF_β
    .global proc_DRF_γ
    .global proc_DRF_ω
  sub rsp, 512
  mov [rsp + 488], rcx
  mov [rsp + 496], rdx
  mov [rsp + 504], rbp
  mov rbp, rsp
  mov qword ptr [rsp], 0
  mov qword ptr [rsp + 8], 0
  mov qword ptr [rsp + 464], 0
  mov qword ptr [rsp + 472], rsp
proc_DRF_α_body:
# DRF     nm POS(0) ANY(&LCASE) RPOS(0)           :F(DRF_n)
# IR_VAR
xchain29_n0_α:
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        jmp              xchain29_n1_α
xchain29_n0_β:
                        jmp              xchain29_n2_α
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
                        jmp              xchain29_n3_α
xchain29_n1_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                        jg               .Lx32_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                        jne              .Lx32_1
                        jmp              .Lx32_0
.Lx32_1:
                        mov              rax, qword ptr [rsp + 8]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rsp + 16]
                        mov              r12, qword ptr [rbp + 144]
                        mov              rbp, qword ptr [rbp + 152]
                        jmp              xchain29_n2_α
# DRF_n   DRF = nm                                :(RETURN)
# IR_VAR
xchain29_n2_α:
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        jmp              xchain29_n4_α
xchain29_n2_β:
                        jmp              proc_DRF_γ
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
xchain29_n3_α:
                        jmp              xchain29_n6_α
xchain29_n3_as:
                        jmp              xchain29_n5_α
xchain29_n3_β:
                        jmp              xchain29_n10_β
xchain29_n3_af:
                        jmp              xchain29_n1_β
# IR_ASSIGN gva
xchain29_n4_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              rdx, qword ptr [rbp + 440]
                        mov              qword ptr [1879052320], rax
                        mov              qword ptr [1879052328], rdx
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        jmp              proc_DRF_γ
xchain29_n4_β:
                        jmp              proc_DRF_γ
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
                        je               .Lx38_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx38_3]
                        lea              rdx, [rip + .Lx38_4]
                        jmp              rax
.Lx38_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                        jmp              .Lx38_1
.Lx38_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                        jmp              .Lx38_1
.Lx38_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + 144]
                        mov              rbp, qword ptr [rbp + 152]
                        jmp              xchain29_n11_α
# IR_LIT_INTEGER
xchain29_n6_α:
                        mov              qword ptr [rbp + 192], 6
                        mov              rax, qword ptr [rip + .Lx39_0]
                        mov              qword ptr [rbp + 200], rax
                        jmp              xchain29_n7_α
xchain29_n6_β:
                        jmp              xchain29_n1_β
.Lx39_0:
                        .quad            0
# IR_MATCH_POS
xchain29_n7_α:
                        mov              rax, 0
                        cmp              r14d, eax
                        jne              xchain29_n1_β
                        jmp              xchain29_n8_α
xchain29_n7_β:
                        jmp              xchain29_n1_β
# IR_MATCH_ANY
xchain29_n8_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                        jge              xchain29_n1_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C0]
                        cmp              byte ptr [rdi+rsi], 0
                        je               xchain29_n1_β
                        add              r14d, 1
                        jmp              xchain29_n9_α
xchain29_n8_β:
                        sub              r14d, 1
                        jmp              xchain29_n1_β
# IR_LIT_INTEGER
xchain29_n9_α:
                        mov              qword ptr [rbp + 224], 6
                        mov              rax, qword ptr [rip + .Lx43_0]
                        mov              qword ptr [rbp + 232], rax
                        jmp              xchain29_n10_α
xchain29_n9_β:
                        jmp              xchain29_n8_β
.Lx43_0:
                        .quad            0
# IR_MATCH_RPOS
xchain29_n10_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                        jne              xchain29_n8_β
                        jmp              xchain29_n5_α
xchain29_n10_β:
                        jmp              xchain29_n8_β
#         DRF = vars[nm]                          :(RETURN)
# IR_VAR
xchain29_n11_α:
                        mov              rax, qword ptr [1879052496]
                        mov              rdx, qword ptr [1879052504]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        jmp              xchain29_n12_α
xchain29_n11_β:
                        jmp              proc_DRF_γ
# IR_VAR
xchain29_n12_α:
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        jmp              xchain29_n13_α
xchain29_n12_β:
                        jmp              proc_DRF_γ
# IR_SUBSCRIPT x[i] variable
xchain29_n13_α:
                        mov              rdi, qword ptr [rbp + 304]
                        mov              rsi, qword ptr [rbp + 312]
                        mov              rdx, qword ptr [rbp + 336]
                        mov              rcx, qword ptr [rbp + 344]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                        je               proc_DRF_γ
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        jmp              xchain29_n14_α
xchain29_n13_β:
                        jmp              proc_DRF_γ
# IR_DEREF variable -> value
xchain29_n14_α:
                        mov              rdi, qword ptr [rbp + 368]
                        mov              rsi, qword ptr [rbp + 376]
                        call             rt_deref@PLT
                        cmp              eax, 99
                        je               proc_DRF_γ
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        jmp              xchain29_n15_α
xchain29_n14_β:
                        jmp              proc_DRF_γ
# IR_ASSIGN gva
xchain29_n15_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              rdx, qword ptr [rbp + 408]
                        mov              qword ptr [1879052320], rax
                        mov              qword ptr [1879052328], rdx
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        jmp              proc_DRF_γ
xchain29_n15_β:
                        jmp              proc_DRF_γ
proc_DRF_res:
add rsp, 8
pop rbp
proc_DRF_β:
jmp proc_DRF_ω
proc_DRF_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 488]
lea rsp, [rbp + 512]
mov rbp, [rbp + 504]
jmp rax
proc_DRF_ω:
mov rax, [rbp + 496]
lea rsp, [rbp + 512]
mov rbp, [rbp + 504]
jmp rax
  .globl proc_ADD_α
proc_ADD_α:
#=======================================================================================================================
    .global proc_ADD_α
    .global proc_ADD_β
    .global proc_ADD_γ
    .global proc_ADD_ω
  sub rsp, 864
  mov [rsp + 840], rcx
  mov [rsp + 848], rdx
  mov [rsp + 856], rbp
  mov rbp, rsp
  mov qword ptr [rsp], 0
  mov qword ptr [rsp + 8], 0
  mov qword ptr [rsp + 816], 0
  mov qword ptr [rsp + 824], rsp
proc_ADD_α_body:
# ADD     p1 = DRF(S[sp])
# IR_VAR
xchain50_n0_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        jmp              xchain50_n1_α
# IR_VAR
xchain50_n1_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        jmp              xchain50_n3_α
#         sp = sp - 1
# IR_VAR
xchain50_n2_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        jmp              xchain50_n4_α
# IR_SUBSCRIPT x[i] variable
xchain50_n3_α:
                        mov              rdi, qword ptr [rbp + 160]
                        mov              rsi, qword ptr [rbp + 168]
                        mov              rdx, qword ptr [rbp + 192]
                        mov              rcx, qword ptr [rbp + 200]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                        je               xchain50_n2_α
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        jmp              xchain50_n6_α
# IR_LIT_INTEGER
xchain50_n4_α:
                        mov              qword ptr [rbp + 352], 6
                        mov              rax, qword ptr [rip + .Lx55_0]
                        mov              qword ptr [rbp + 360], rax
                        jmp              xchain50_n7_α
.Lx55_0:
                        .quad            1
#         S[sp] = DRF(S[sp]) + p1
# IR_VAR
xchain50_n5_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        jmp              xchain50_n8_α
# IR_DEREF variable -> value
xchain50_n6_α:
                        mov              rdi, qword ptr [rbp + 224]
                        mov              rsi, qword ptr [rbp + 232]
                        call             rt_deref@PLT
                        cmp              eax, 99
                        je               xchain50_n2_α
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        jmp              xchain50_n10_α
xchain50_n7_α:
# IR_BINOP_ARITH
                        mov              eax, dword ptr [rbp + 320]
                        cmp              eax, 100
                        je               .Lx58_0
                        mov              eax, dword ptr [rbp + 320]
                        cmp              eax, 6
                        jne              .Lx58_2
.Lx58_1:
                        mov              rax, qword ptr [rbp + 328]
                        mov              rcx, 1
                        sub              rax, rcx
                        mov              qword ptr [rbp + 288], 6
                        mov              qword ptr [rbp + 296], rax
                        jmp              xchain50_n11_α
.Lx58_0:
                        mov              rdi, qword ptr [rbp + 320]
                        mov              rsi, qword ptr [rbp + 328]
                        mov              rdx, qword ptr [rbp + 352]
                        mov              rcx, qword ptr [rbp + 360]
                        mov              r8d, 1
                        lea              r9, [rbp + 288]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                        jne              xchain50_n11_α
.Lx58_2:
                        mov              rdi, qword ptr [rbp + 320]
                        mov              rsi, qword ptr [rbp + 328]
                        mov              rdx, qword ptr [rbp + 352]
                        mov              rcx, qword ptr [rbp + 360]
                        mov              r8d, 1
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                        je               xchain50_n5_α
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        jmp              xchain50_n11_α
xchain50_n7_β:
                        jmp              xchain50_n5_α
# IR_VAR
xchain50_n8_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        jmp              xchain50_n12_α
#         ADD = .dm                               :(NRETURN)
# IR_LIT_STRING
xchain50_n9_α:
                        mov              qword ptr [rbp + 784], 1
                        mov              rax, qword ptr [rip + .Lx60_0]
                        mov              qword ptr [rbp + 792], rax
                        jmp              xchain50_n13_α
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
                        je               .Lx62_5
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx62_6]
                        lea              rdx, [rip + .Lx62_7]
                        jmp              rax
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
                        jmp              .Lx62_2
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
                        jmp              .Lx62_2
.Lx62_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                        jne              .Lx62_20
                        mov              rax, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                        jmp              .Lx62_21
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
                        je               .Lx62_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx62_3]
                        lea              rdx, [rip + .Lx62_4]
                        jmp              rax
.Lx62_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        jmp              .Lx62_2
.Lx62_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        jmp              .Lx62_2
.Lx62_1:
                        call             rt_faildescr@PLT
.Lx62_2:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                        je               xchain50_n2_α
                        jmp              xchain50_n14_α
xchain50_n10_β:
                        jmp              xchain50_n2_α
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
                        jmp              xchain50_n5_α
# IR_SUBSCRIPT x[i] variable
xchain50_n12_α:
                        mov              rdi, qword ptr [rbp + 384]
                        mov              rsi, qword ptr [rbp + 392]
                        mov              rdx, qword ptr [rbp + 416]
                        mov              rcx, qword ptr [rbp + 424]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                        je               xchain50_n9_α
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        jmp              xchain50_n15_α
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
                        je               xchain50_n17_α
                        jmp              xchain50_n16_α
xchain50_n13_β:
                        jmp              xchain50_n17_α
# IR_ASSIGN gva
xchain50_n14_α:
                        mov              rax, qword ptr [rbp + 112]
                        mov              rdx, qword ptr [rbp + 120]
                        mov              qword ptr [1879052368], rax
                        mov              qword ptr [1879052376], rdx
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        jmp              xchain50_n2_α
# IR_VAR
xchain50_n15_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        jmp              xchain50_n18_α
# IR_ASSIGN gva
xchain50_n16_α:
                        mov              rax, qword ptr [rbp + 736]
                        mov              rdx, qword ptr [rbp + 744]
                        mov              qword ptr [1879052352], rax
                        mov              qword ptr [1879052360], rdx
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                        jmp              xchain50_n17_α
# IR_LIT_STRING
xchain50_n17_α:
                        mov              qword ptr [rbp + 16], 1
                        mov              rax, qword ptr [rip + .Lx70_0]
                        mov              qword ptr [rbp + 24], rax
                        jmp              xchain50_n19_α
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
                        jmp              xchain50_n20_α
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
                        je               proc_ADD_ω
                        jmp              proc_ADD_γ
xchain50_n19_β:
                        jmp              proc_ADD_ω
# IR_SUBSCRIPT x[i] variable
xchain50_n20_α:
                        mov              rdi, qword ptr [rbp + 560]
                        mov              rsi, qword ptr [rbp + 568]
                        mov              rdx, qword ptr [rbp + 592]
                        mov              rcx, qword ptr [rbp + 600]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                        je               xchain50_n9_α
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        jmp              xchain50_n21_α
# IR_DEREF variable -> value
xchain50_n21_α:
                        mov              rdi, qword ptr [rbp + 624]
                        mov              rsi, qword ptr [rbp + 632]
                        call             rt_deref@PLT
                        cmp              eax, 99
                        je               xchain50_n9_α
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        jmp              xchain50_n22_α
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
                        je               .Lx77_5
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx77_6]
                        lea              rdx, [rip + .Lx77_7]
                        jmp              rax
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
                        jmp              .Lx77_2
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
                        jmp              .Lx77_2
.Lx77_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                        jne              .Lx77_20
                        mov              rax, qword ptr [rbp + 656]
                        mov              rdx, qword ptr [rbp + 664]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                        jmp              .Lx77_21
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
                        je               .Lx77_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx77_3]
                        lea              rdx, [rip + .Lx77_4]
                        jmp              rax
.Lx77_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        jmp              .Lx77_2
.Lx77_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        jmp              .Lx77_2
.Lx77_1:
                        call             rt_faildescr@PLT
.Lx77_2:
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              eax, 99
                        je               xchain50_n9_α
                        jmp              xchain50_n23_α
xchain50_n22_β:
                        jmp              xchain50_n9_α
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
                        jmp              xchain50_n24_α
xchain50_n24_α:
# IR_BINOP_ARITH
                        mov              eax, dword ptr [rbp + 512]
                        cmp              eax, 100
                        je               .Lx79_0
                        mov              eax, dword ptr [rbp + 672]
                        cmp              eax, 100
                        je               .Lx79_0
                        mov              eax, dword ptr [rbp + 512]
                        cmp              eax, 6
                        jne              .Lx79_2
                        mov              eax, dword ptr [rbp + 672]
                        cmp              eax, 6
                        jne              .Lx79_2
.Lx79_1:
                        mov              rax, qword ptr [rbp + 520]
                        mov              rcx, qword ptr [rbp + 680]
                        add              rax, rcx
                        mov              qword ptr [rbp + 480], 6
                        mov              qword ptr [rbp + 488], rax
                        jmp              xchain50_n25_α
.Lx79_0:
                        mov              rdi, qword ptr [rbp + 512]
                        mov              rsi, qword ptr [rbp + 520]
                        mov              rdx, qword ptr [rbp + 672]
                        mov              rcx, qword ptr [rbp + 680]
                        mov              r8d, 0
                        lea              r9, [rbp + 480]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                        jne              xchain50_n25_α
.Lx79_2:
                        mov              rdi, qword ptr [rbp + 512]
                        mov              rsi, qword ptr [rbp + 520]
                        mov              rdx, qword ptr [rbp + 672]
                        mov              rcx, qword ptr [rbp + 680]
                        mov              r8d, 0
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                        je               xchain50_n9_α
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        jmp              xchain50_n25_α
xchain50_n24_β:
                        jmp              xchain50_n9_α
# IR_ASSIGN_VAR
xchain50_n25_α:
                        mov              rdi, qword ptr [rbp + 448]
                        mov              rsi, qword ptr [rbp + 456]
                        mov              rdx, qword ptr [rbp + 480]
                        mov              rcx, qword ptr [rbp + 488]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                        je               xchain50_n9_α
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                        jmp              xchain50_n9_α
proc_ADD_res:
add rsp, 8
pop rbp
proc_ADD_β:
jmp proc_ADD_ω
proc_ADD_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 840]
lea rsp, [rbp + 864]
mov rbp, [rbp + 856]
jmp rax
proc_ADD_ω:
mov rax, [rbp + 848]
lea rsp, [rbp + 864]
mov rbp, [rbp + 856]
jmp rax
  .globl proc_SUB_α
proc_SUB_α:
#=======================================================================================================================
    .global proc_SUB_α
    .global proc_SUB_β
    .global proc_SUB_γ
    .global proc_SUB_ω
  sub rsp, 864
  mov [rsp + 840], rcx
  mov [rsp + 848], rdx
  mov [rsp + 856], rbp
  mov rbp, rsp
  mov qword ptr [rsp], 0
  mov qword ptr [rsp + 8], 0
  mov qword ptr [rsp + 816], 0
  mov qword ptr [rsp + 824], rsp
proc_SUB_α_body:
# SUB     p1 = DRF(S[sp])
# IR_VAR
xchain81_n0_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        jmp              xchain81_n1_α
# IR_VAR
xchain81_n1_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        jmp              xchain81_n3_α
#         sp = sp - 1
# IR_VAR
xchain81_n2_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        jmp              xchain81_n4_α
# IR_SUBSCRIPT x[i] variable
xchain81_n3_α:
                        mov              rdi, qword ptr [rbp + 160]
                        mov              rsi, qword ptr [rbp + 168]
                        mov              rdx, qword ptr [rbp + 192]
                        mov              rcx, qword ptr [rbp + 200]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                        je               xchain81_n2_α
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        jmp              xchain81_n6_α
# IR_LIT_INTEGER
xchain81_n4_α:
                        mov              qword ptr [rbp + 352], 6
                        mov              rax, qword ptr [rip + .Lx86_0]
                        mov              qword ptr [rbp + 360], rax
                        jmp              xchain81_n7_α
.Lx86_0:
                        .quad            1
#         S[sp] = DRF(S[sp]) - p1
# IR_VAR
xchain81_n5_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        jmp              xchain81_n8_α
# IR_DEREF variable -> value
xchain81_n6_α:
                        mov              rdi, qword ptr [rbp + 224]
                        mov              rsi, qword ptr [rbp + 232]
                        call             rt_deref@PLT
                        cmp              eax, 99
                        je               xchain81_n2_α
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        jmp              xchain81_n10_α
xchain81_n7_α:
# IR_BINOP_ARITH
                        mov              eax, dword ptr [rbp + 320]
                        cmp              eax, 100
                        je               .Lx89_0
                        mov              eax, dword ptr [rbp + 320]
                        cmp              eax, 6
                        jne              .Lx89_2
.Lx89_1:
                        mov              rax, qword ptr [rbp + 328]
                        mov              rcx, 1
                        sub              rax, rcx
                        mov              qword ptr [rbp + 288], 6
                        mov              qword ptr [rbp + 296], rax
                        jmp              xchain81_n11_α
.Lx89_0:
                        mov              rdi, qword ptr [rbp + 320]
                        mov              rsi, qword ptr [rbp + 328]
                        mov              rdx, qword ptr [rbp + 352]
                        mov              rcx, qword ptr [rbp + 360]
                        mov              r8d, 1
                        lea              r9, [rbp + 288]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                        jne              xchain81_n11_α
.Lx89_2:
                        mov              rdi, qword ptr [rbp + 320]
                        mov              rsi, qword ptr [rbp + 328]
                        mov              rdx, qword ptr [rbp + 352]
                        mov              rcx, qword ptr [rbp + 360]
                        mov              r8d, 1
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                        je               xchain81_n5_α
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        jmp              xchain81_n11_α
xchain81_n7_β:
                        jmp              xchain81_n5_α
# IR_VAR
xchain81_n8_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        jmp              xchain81_n12_α
#         SUB = .dm                               :(NRETURN)
# IR_LIT_STRING
xchain81_n9_α:
                        mov              qword ptr [rbp + 784], 1
                        mov              rax, qword ptr [rip + .Lx91_0]
                        mov              qword ptr [rbp + 792], rax
                        jmp              xchain81_n13_α
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
                        je               .Lx93_5
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx93_6]
                        lea              rdx, [rip + .Lx93_7]
                        jmp              rax
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
                        jmp              .Lx93_2
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
                        jmp              .Lx93_2
.Lx93_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                        jne              .Lx93_20
                        mov              rax, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                        jmp              .Lx93_21
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
                        je               .Lx93_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx93_3]
                        lea              rdx, [rip + .Lx93_4]
                        jmp              rax
.Lx93_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        jmp              .Lx93_2
.Lx93_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        jmp              .Lx93_2
.Lx93_1:
                        call             rt_faildescr@PLT
.Lx93_2:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                        je               xchain81_n2_α
                        jmp              xchain81_n14_α
xchain81_n10_β:
                        jmp              xchain81_n2_α
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
                        jmp              xchain81_n5_α
# IR_SUBSCRIPT x[i] variable
xchain81_n12_α:
                        mov              rdi, qword ptr [rbp + 384]
                        mov              rsi, qword ptr [rbp + 392]
                        mov              rdx, qword ptr [rbp + 416]
                        mov              rcx, qword ptr [rbp + 424]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                        je               xchain81_n9_α
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        jmp              xchain81_n15_α
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
                        je               xchain81_n17_α
                        jmp              xchain81_n16_α
xchain81_n13_β:
                        jmp              xchain81_n17_α
# IR_ASSIGN gva
xchain81_n14_α:
                        mov              rax, qword ptr [rbp + 112]
                        mov              rdx, qword ptr [rbp + 120]
                        mov              qword ptr [1879052368], rax
                        mov              qword ptr [1879052376], rdx
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        jmp              xchain81_n2_α
# IR_VAR
xchain81_n15_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        jmp              xchain81_n18_α
# IR_ASSIGN gva
xchain81_n16_α:
                        mov              rax, qword ptr [rbp + 736]
                        mov              rdx, qword ptr [rbp + 744]
                        mov              qword ptr [1879052384], rax
                        mov              qword ptr [1879052392], rdx
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                        jmp              xchain81_n17_α
# IR_LIT_STRING
xchain81_n17_α:
                        mov              qword ptr [rbp + 16], 1
                        mov              rax, qword ptr [rip + .Lx101_0]
                        mov              qword ptr [rbp + 24], rax
                        jmp              xchain81_n19_α
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
                        jmp              xchain81_n20_α
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
                        je               proc_SUB_ω
                        jmp              proc_SUB_γ
xchain81_n19_β:
                        jmp              proc_SUB_ω
# IR_SUBSCRIPT x[i] variable
xchain81_n20_α:
                        mov              rdi, qword ptr [rbp + 560]
                        mov              rsi, qword ptr [rbp + 568]
                        mov              rdx, qword ptr [rbp + 592]
                        mov              rcx, qword ptr [rbp + 600]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                        je               xchain81_n9_α
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        jmp              xchain81_n21_α
# IR_DEREF variable -> value
xchain81_n21_α:
                        mov              rdi, qword ptr [rbp + 624]
                        mov              rsi, qword ptr [rbp + 632]
                        call             rt_deref@PLT
                        cmp              eax, 99
                        je               xchain81_n9_α
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        jmp              xchain81_n22_α
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
                        je               .Lx108_5
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx108_6]
                        lea              rdx, [rip + .Lx108_7]
                        jmp              rax
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
                        jmp              .Lx108_2
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
                        jmp              .Lx108_2
.Lx108_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                        jne              .Lx108_20
                        mov              rax, qword ptr [rbp + 656]
                        mov              rdx, qword ptr [rbp + 664]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                        jmp              .Lx108_21
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
                        je               .Lx108_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx108_3]
                        lea              rdx, [rip + .Lx108_4]
                        jmp              rax
.Lx108_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        jmp              .Lx108_2
.Lx108_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        jmp              .Lx108_2
.Lx108_1:
                        call             rt_faildescr@PLT
.Lx108_2:
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              eax, 99
                        je               xchain81_n9_α
                        jmp              xchain81_n23_α
xchain81_n22_β:
                        jmp              xchain81_n9_α
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
                        jmp              xchain81_n24_α
xchain81_n24_α:
# IR_BINOP_ARITH
                        mov              eax, dword ptr [rbp + 512]
                        cmp              eax, 100
                        je               .Lx110_0
                        mov              eax, dword ptr [rbp + 672]
                        cmp              eax, 100
                        je               .Lx110_0
                        mov              eax, dword ptr [rbp + 512]
                        cmp              eax, 6
                        jne              .Lx110_2
                        mov              eax, dword ptr [rbp + 672]
                        cmp              eax, 6
                        jne              .Lx110_2
.Lx110_1:
                        mov              rax, qword ptr [rbp + 520]
                        mov              rcx, qword ptr [rbp + 680]
                        sub              rax, rcx
                        mov              qword ptr [rbp + 480], 6
                        mov              qword ptr [rbp + 488], rax
                        jmp              xchain81_n25_α
.Lx110_0:
                        mov              rdi, qword ptr [rbp + 512]
                        mov              rsi, qword ptr [rbp + 520]
                        mov              rdx, qword ptr [rbp + 672]
                        mov              rcx, qword ptr [rbp + 680]
                        mov              r8d, 1
                        lea              r9, [rbp + 480]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                        jne              xchain81_n25_α
.Lx110_2:
                        mov              rdi, qword ptr [rbp + 512]
                        mov              rsi, qword ptr [rbp + 520]
                        mov              rdx, qword ptr [rbp + 672]
                        mov              rcx, qword ptr [rbp + 680]
                        mov              r8d, 1
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                        je               xchain81_n9_α
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        jmp              xchain81_n25_α
xchain81_n24_β:
                        jmp              xchain81_n9_α
# IR_ASSIGN_VAR
xchain81_n25_α:
                        mov              rdi, qword ptr [rbp + 448]
                        mov              rsi, qword ptr [rbp + 456]
                        mov              rdx, qword ptr [rbp + 480]
                        mov              rcx, qword ptr [rbp + 488]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                        je               xchain81_n9_α
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                        jmp              xchain81_n9_α
proc_SUB_res:
add rsp, 8
pop rbp
proc_SUB_β:
jmp proc_SUB_ω
proc_SUB_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 840]
lea rsp, [rbp + 864]
mov rbp, [rbp + 856]
jmp rax
proc_SUB_ω:
mov rax, [rbp + 848]
lea rsp, [rbp + 864]
mov rbp, [rbp + 856]
jmp rax
  .globl proc_MUL_α
proc_MUL_α:
#=======================================================================================================================
    .global proc_MUL_α
    .global proc_MUL_β
    .global proc_MUL_γ
    .global proc_MUL_ω
  sub rsp, 864
  mov [rsp + 840], rcx
  mov [rsp + 848], rdx
  mov [rsp + 856], rbp
  mov rbp, rsp
  mov qword ptr [rsp], 0
  mov qword ptr [rsp + 8], 0
  mov qword ptr [rsp + 816], 0
  mov qword ptr [rsp + 824], rsp
proc_MUL_α_body:
# MUL     p1 = DRF(S[sp])
# IR_VAR
xchain112_n0_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        jmp              xchain112_n1_α
# IR_VAR
xchain112_n1_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        jmp              xchain112_n3_α
#         sp = sp - 1
# IR_VAR
xchain112_n2_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        jmp              xchain112_n4_α
# IR_SUBSCRIPT x[i] variable
xchain112_n3_α:
                        mov              rdi, qword ptr [rbp + 160]
                        mov              rsi, qword ptr [rbp + 168]
                        mov              rdx, qword ptr [rbp + 192]
                        mov              rcx, qword ptr [rbp + 200]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                        je               xchain112_n2_α
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        jmp              xchain112_n6_α
# IR_LIT_INTEGER
xchain112_n4_α:
                        mov              qword ptr [rbp + 352], 6
                        mov              rax, qword ptr [rip + .Lx117_0]
                        mov              qword ptr [rbp + 360], rax
                        jmp              xchain112_n7_α
.Lx117_0:
                        .quad            1
#         S[sp] = DRF(S[sp]) * p1
# IR_VAR
xchain112_n5_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        jmp              xchain112_n8_α
# IR_DEREF variable -> value
xchain112_n6_α:
                        mov              rdi, qword ptr [rbp + 224]
                        mov              rsi, qword ptr [rbp + 232]
                        call             rt_deref@PLT
                        cmp              eax, 99
                        je               xchain112_n2_α
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        jmp              xchain112_n10_α
xchain112_n7_α:
# IR_BINOP_ARITH
                        mov              eax, dword ptr [rbp + 320]
                        cmp              eax, 100
                        je               .Lx120_0
                        mov              eax, dword ptr [rbp + 320]
                        cmp              eax, 6
                        jne              .Lx120_2
.Lx120_1:
                        mov              rax, qword ptr [rbp + 328]
                        mov              rcx, 1
                        sub              rax, rcx
                        mov              qword ptr [rbp + 288], 6
                        mov              qword ptr [rbp + 296], rax
                        jmp              xchain112_n11_α
.Lx120_0:
                        mov              rdi, qword ptr [rbp + 320]
                        mov              rsi, qword ptr [rbp + 328]
                        mov              rdx, qword ptr [rbp + 352]
                        mov              rcx, qword ptr [rbp + 360]
                        mov              r8d, 1
                        lea              r9, [rbp + 288]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                        jne              xchain112_n11_α
.Lx120_2:
                        mov              rdi, qword ptr [rbp + 320]
                        mov              rsi, qword ptr [rbp + 328]
                        mov              rdx, qword ptr [rbp + 352]
                        mov              rcx, qword ptr [rbp + 360]
                        mov              r8d, 1
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                        je               xchain112_n5_α
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        jmp              xchain112_n11_α
xchain112_n7_β:
                        jmp              xchain112_n5_α
# IR_VAR
xchain112_n8_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        jmp              xchain112_n12_α
#         MUL = .dm                               :(NRETURN)
# IR_LIT_STRING
xchain112_n9_α:
                        mov              qword ptr [rbp + 784], 1
                        mov              rax, qword ptr [rip + .Lx122_0]
                        mov              qword ptr [rbp + 792], rax
                        jmp              xchain112_n13_α
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
                        je               .Lx124_5
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx124_6]
                        lea              rdx, [rip + .Lx124_7]
                        jmp              rax
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
                        jmp              .Lx124_2
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
                        jmp              .Lx124_2
.Lx124_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                        jne              .Lx124_20
                        mov              rax, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                        jmp              .Lx124_21
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
                        je               .Lx124_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx124_3]
                        lea              rdx, [rip + .Lx124_4]
                        jmp              rax
.Lx124_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        jmp              .Lx124_2
.Lx124_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        jmp              .Lx124_2
.Lx124_1:
                        call             rt_faildescr@PLT
.Lx124_2:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                        je               xchain112_n2_α
                        jmp              xchain112_n14_α
xchain112_n10_β:
                        jmp              xchain112_n2_α
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
                        jmp              xchain112_n5_α
# IR_SUBSCRIPT x[i] variable
xchain112_n12_α:
                        mov              rdi, qword ptr [rbp + 384]
                        mov              rsi, qword ptr [rbp + 392]
                        mov              rdx, qword ptr [rbp + 416]
                        mov              rcx, qword ptr [rbp + 424]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                        je               xchain112_n9_α
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        jmp              xchain112_n15_α
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
                        je               xchain112_n17_α
                        jmp              xchain112_n16_α
xchain112_n13_β:
                        jmp              xchain112_n17_α
# IR_ASSIGN gva
xchain112_n14_α:
                        mov              rax, qword ptr [rbp + 112]
                        mov              rdx, qword ptr [rbp + 120]
                        mov              qword ptr [1879052368], rax
                        mov              qword ptr [1879052376], rdx
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        jmp              xchain112_n2_α
# IR_VAR
xchain112_n15_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        jmp              xchain112_n18_α
# IR_ASSIGN gva
xchain112_n16_α:
                        mov              rax, qword ptr [rbp + 736]
                        mov              rdx, qword ptr [rbp + 744]
                        mov              qword ptr [1879052400], rax
                        mov              qword ptr [1879052408], rdx
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                        jmp              xchain112_n17_α
# IR_LIT_STRING
xchain112_n17_α:
                        mov              qword ptr [rbp + 16], 1
                        mov              rax, qword ptr [rip + .Lx132_0]
                        mov              qword ptr [rbp + 24], rax
                        jmp              xchain112_n19_α
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
                        jmp              xchain112_n20_α
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
                        je               proc_MUL_ω
                        jmp              proc_MUL_γ
xchain112_n19_β:
                        jmp              proc_MUL_ω
# IR_SUBSCRIPT x[i] variable
xchain112_n20_α:
                        mov              rdi, qword ptr [rbp + 560]
                        mov              rsi, qword ptr [rbp + 568]
                        mov              rdx, qword ptr [rbp + 592]
                        mov              rcx, qword ptr [rbp + 600]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                        je               xchain112_n9_α
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        jmp              xchain112_n21_α
# IR_DEREF variable -> value
xchain112_n21_α:
                        mov              rdi, qword ptr [rbp + 624]
                        mov              rsi, qword ptr [rbp + 632]
                        call             rt_deref@PLT
                        cmp              eax, 99
                        je               xchain112_n9_α
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        jmp              xchain112_n22_α
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
                        je               .Lx139_5
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx139_6]
                        lea              rdx, [rip + .Lx139_7]
                        jmp              rax
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
                        jmp              .Lx139_2
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
                        jmp              .Lx139_2
.Lx139_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                        jne              .Lx139_20
                        mov              rax, qword ptr [rbp + 656]
                        mov              rdx, qword ptr [rbp + 664]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                        jmp              .Lx139_21
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
                        je               .Lx139_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx139_3]
                        lea              rdx, [rip + .Lx139_4]
                        jmp              rax
.Lx139_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        jmp              .Lx139_2
.Lx139_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        jmp              .Lx139_2
.Lx139_1:
                        call             rt_faildescr@PLT
.Lx139_2:
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              eax, 99
                        je               xchain112_n9_α
                        jmp              xchain112_n23_α
xchain112_n22_β:
                        jmp              xchain112_n9_α
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
                        jmp              xchain112_n24_α
xchain112_n24_α:
# IR_BINOP_ARITH
                        mov              eax, dword ptr [rbp + 512]
                        cmp              eax, 100
                        je               .Lx141_0
                        mov              eax, dword ptr [rbp + 672]
                        cmp              eax, 100
                        je               .Lx141_0
                        mov              eax, dword ptr [rbp + 512]
                        cmp              eax, 6
                        jne              .Lx141_2
                        mov              eax, dword ptr [rbp + 672]
                        cmp              eax, 6
                        jne              .Lx141_2
.Lx141_1:
                        mov              rax, qword ptr [rbp + 520]
                        mov              rcx, qword ptr [rbp + 680]
                        imul             rax, rcx
                        mov              qword ptr [rbp + 480], 6
                        mov              qword ptr [rbp + 488], rax
                        jmp              xchain112_n25_α
.Lx141_0:
                        mov              rdi, qword ptr [rbp + 512]
                        mov              rsi, qword ptr [rbp + 520]
                        mov              rdx, qword ptr [rbp + 672]
                        mov              rcx, qword ptr [rbp + 680]
                        mov              r8d, 2
                        lea              r9, [rbp + 480]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                        jne              xchain112_n25_α
.Lx141_2:
                        mov              rdi, qword ptr [rbp + 512]
                        mov              rsi, qword ptr [rbp + 520]
                        mov              rdx, qword ptr [rbp + 672]
                        mov              rcx, qword ptr [rbp + 680]
                        mov              r8d, 2
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                        je               xchain112_n9_α
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        jmp              xchain112_n25_α
xchain112_n24_β:
                        jmp              xchain112_n9_α
# IR_ASSIGN_VAR
xchain112_n25_α:
                        mov              rdi, qword ptr [rbp + 448]
                        mov              rsi, qword ptr [rbp + 456]
                        mov              rdx, qword ptr [rbp + 480]
                        mov              rcx, qword ptr [rbp + 488]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                        je               xchain112_n9_α
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                        jmp              xchain112_n9_α
proc_MUL_res:
add rsp, 8
pop rbp
proc_MUL_β:
jmp proc_MUL_ω
proc_MUL_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 840]
lea rsp, [rbp + 864]
mov rbp, [rbp + 856]
jmp rax
proc_MUL_ω:
mov rax, [rbp + 848]
lea rsp, [rbp + 864]
mov rbp, [rbp + 856]
jmp rax
  .globl proc_DIV_α
proc_DIV_α:
#=======================================================================================================================
    .global proc_DIV_α
    .global proc_DIV_β
    .global proc_DIV_γ
    .global proc_DIV_ω
  sub rsp, 864
  mov [rsp + 840], rcx
  mov [rsp + 848], rdx
  mov [rsp + 856], rbp
  mov rbp, rsp
  mov qword ptr [rsp], 0
  mov qword ptr [rsp + 8], 0
  mov qword ptr [rsp + 816], 0
  mov qword ptr [rsp + 824], rsp
proc_DIV_α_body:
# DIV     p1 = DRF(S[sp])
# IR_VAR
xchain143_n0_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        jmp              xchain143_n1_α
# IR_VAR
xchain143_n1_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        jmp              xchain143_n3_α
#         sp = sp - 1
# IR_VAR
xchain143_n2_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        jmp              xchain143_n4_α
# IR_SUBSCRIPT x[i] variable
xchain143_n3_α:
                        mov              rdi, qword ptr [rbp + 160]
                        mov              rsi, qword ptr [rbp + 168]
                        mov              rdx, qword ptr [rbp + 192]
                        mov              rcx, qword ptr [rbp + 200]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                        je               xchain143_n2_α
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        jmp              xchain143_n6_α
# IR_LIT_INTEGER
xchain143_n4_α:
                        mov              qword ptr [rbp + 352], 6
                        mov              rax, qword ptr [rip + .Lx148_0]
                        mov              qword ptr [rbp + 360], rax
                        jmp              xchain143_n7_α
.Lx148_0:
                        .quad            1
#         S[sp] = DRF(S[sp]) / p1
# IR_VAR
xchain143_n5_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        jmp              xchain143_n8_α
# IR_DEREF variable -> value
xchain143_n6_α:
                        mov              rdi, qword ptr [rbp + 224]
                        mov              rsi, qword ptr [rbp + 232]
                        call             rt_deref@PLT
                        cmp              eax, 99
                        je               xchain143_n2_α
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        jmp              xchain143_n10_α
xchain143_n7_α:
# IR_BINOP_ARITH
                        mov              eax, dword ptr [rbp + 320]
                        cmp              eax, 100
                        je               .Lx151_0
                        mov              eax, dword ptr [rbp + 320]
                        cmp              eax, 6
                        jne              .Lx151_2
.Lx151_1:
                        mov              rax, qword ptr [rbp + 328]
                        mov              rcx, 1
                        sub              rax, rcx
                        mov              qword ptr [rbp + 288], 6
                        mov              qword ptr [rbp + 296], rax
                        jmp              xchain143_n11_α
.Lx151_0:
                        mov              rdi, qword ptr [rbp + 320]
                        mov              rsi, qword ptr [rbp + 328]
                        mov              rdx, qword ptr [rbp + 352]
                        mov              rcx, qword ptr [rbp + 360]
                        mov              r8d, 1
                        lea              r9, [rbp + 288]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                        jne              xchain143_n11_α
.Lx151_2:
                        mov              rdi, qword ptr [rbp + 320]
                        mov              rsi, qword ptr [rbp + 328]
                        mov              rdx, qword ptr [rbp + 352]
                        mov              rcx, qword ptr [rbp + 360]
                        mov              r8d, 1
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                        je               xchain143_n5_α
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        jmp              xchain143_n11_α
xchain143_n7_β:
                        jmp              xchain143_n5_α
# IR_VAR
xchain143_n8_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        jmp              xchain143_n12_α
#         DIV = .dm                               :(NRETURN)
# IR_LIT_STRING
xchain143_n9_α:
                        mov              qword ptr [rbp + 784], 1
                        mov              rax, qword ptr [rip + .Lx153_0]
                        mov              qword ptr [rbp + 792], rax
                        jmp              xchain143_n13_α
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
                        je               .Lx155_5
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx155_6]
                        lea              rdx, [rip + .Lx155_7]
                        jmp              rax
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
                        jmp              .Lx155_2
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
                        jmp              .Lx155_2
.Lx155_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                        jne              .Lx155_20
                        mov              rax, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                        jmp              .Lx155_21
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
                        je               .Lx155_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx155_3]
                        lea              rdx, [rip + .Lx155_4]
                        jmp              rax
.Lx155_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        jmp              .Lx155_2
.Lx155_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        jmp              .Lx155_2
.Lx155_1:
                        call             rt_faildescr@PLT
.Lx155_2:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                        je               xchain143_n2_α
                        jmp              xchain143_n14_α
xchain143_n10_β:
                        jmp              xchain143_n2_α
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
                        jmp              xchain143_n5_α
# IR_SUBSCRIPT x[i] variable
xchain143_n12_α:
                        mov              rdi, qword ptr [rbp + 384]
                        mov              rsi, qword ptr [rbp + 392]
                        mov              rdx, qword ptr [rbp + 416]
                        mov              rcx, qword ptr [rbp + 424]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                        je               xchain143_n9_α
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        jmp              xchain143_n15_α
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
                        je               xchain143_n17_α
                        jmp              xchain143_n16_α
xchain143_n13_β:
                        jmp              xchain143_n17_α
# IR_ASSIGN gva
xchain143_n14_α:
                        mov              rax, qword ptr [rbp + 112]
                        mov              rdx, qword ptr [rbp + 120]
                        mov              qword ptr [1879052368], rax
                        mov              qword ptr [1879052376], rdx
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        jmp              xchain143_n2_α
# IR_VAR
xchain143_n15_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        jmp              xchain143_n18_α
# IR_ASSIGN gva
xchain143_n16_α:
                        mov              rax, qword ptr [rbp + 736]
                        mov              rdx, qword ptr [rbp + 744]
                        mov              qword ptr [1879052416], rax
                        mov              qword ptr [1879052424], rdx
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                        jmp              xchain143_n17_α
# IR_LIT_STRING
xchain143_n17_α:
                        mov              qword ptr [rbp + 16], 1
                        mov              rax, qword ptr [rip + .Lx163_0]
                        mov              qword ptr [rbp + 24], rax
                        jmp              xchain143_n19_α
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
                        jmp              xchain143_n20_α
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
                        je               proc_DIV_ω
                        jmp              proc_DIV_γ
xchain143_n19_β:
                        jmp              proc_DIV_ω
# IR_SUBSCRIPT x[i] variable
xchain143_n20_α:
                        mov              rdi, qword ptr [rbp + 560]
                        mov              rsi, qword ptr [rbp + 568]
                        mov              rdx, qword ptr [rbp + 592]
                        mov              rcx, qword ptr [rbp + 600]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                        je               xchain143_n9_α
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        jmp              xchain143_n21_α
# IR_DEREF variable -> value
xchain143_n21_α:
                        mov              rdi, qword ptr [rbp + 624]
                        mov              rsi, qword ptr [rbp + 632]
                        call             rt_deref@PLT
                        cmp              eax, 99
                        je               xchain143_n9_α
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        jmp              xchain143_n22_α
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
                        je               .Lx170_5
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx170_6]
                        lea              rdx, [rip + .Lx170_7]
                        jmp              rax
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
                        jmp              .Lx170_2
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
                        jmp              .Lx170_2
.Lx170_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                        jne              .Lx170_20
                        mov              rax, qword ptr [rbp + 656]
                        mov              rdx, qword ptr [rbp + 664]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                        jmp              .Lx170_21
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
                        je               .Lx170_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx170_3]
                        lea              rdx, [rip + .Lx170_4]
                        jmp              rax
.Lx170_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        jmp              .Lx170_2
.Lx170_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        jmp              .Lx170_2
.Lx170_1:
                        call             rt_faildescr@PLT
.Lx170_2:
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              eax, 99
                        je               xchain143_n9_α
                        jmp              xchain143_n23_α
xchain143_n22_β:
                        jmp              xchain143_n9_α
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
                        jmp              xchain143_n24_α
xchain143_n24_α:
# IR_BINOP_ARITH
                        mov              eax, dword ptr [rbp + 512]
                        cmp              eax, 100
                        je               .Lx172_0
                        mov              eax, dword ptr [rbp + 672]
                        cmp              eax, 100
                        je               .Lx172_0
                        mov              eax, dword ptr [rbp + 512]
                        cmp              eax, 6
                        jne              .Lx172_2
                        mov              eax, dword ptr [rbp + 672]
                        cmp              eax, 6
                        jne              .Lx172_2
.Lx172_1:
                        mov              rax, qword ptr [rbp + 520]
                        mov              rcx, qword ptr [rbp + 680]
                        cqo
                        idiv             rcx
                        mov              qword ptr [rbp + 480], 6
                        mov              qword ptr [rbp + 488], rax
                        jmp              xchain143_n25_α
.Lx172_0:
                        mov              rdi, qword ptr [rbp + 512]
                        mov              rsi, qword ptr [rbp + 520]
                        mov              rdx, qword ptr [rbp + 672]
                        mov              rcx, qword ptr [rbp + 680]
                        mov              r8d, 3
                        lea              r9, [rbp + 480]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                        jne              xchain143_n25_α
.Lx172_2:
                        mov              rdi, qword ptr [rbp + 512]
                        mov              rsi, qword ptr [rbp + 520]
                        mov              rdx, qword ptr [rbp + 672]
                        mov              rcx, qword ptr [rbp + 680]
                        mov              r8d, 3
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                        je               xchain143_n9_α
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        jmp              xchain143_n25_α
xchain143_n24_β:
                        jmp              xchain143_n9_α
# IR_ASSIGN_VAR
xchain143_n25_α:
                        mov              rdi, qword ptr [rbp + 448]
                        mov              rsi, qword ptr [rbp + 456]
                        mov              rdx, qword ptr [rbp + 480]
                        mov              rcx, qword ptr [rbp + 488]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                        je               xchain143_n9_α
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                        jmp              xchain143_n9_α
proc_DIV_res:
add rsp, 8
pop rbp
proc_DIV_β:
jmp proc_DIV_ω
proc_DIV_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 840]
lea rsp, [rbp + 864]
mov rbp, [rbp + 856]
jmp rax
proc_DIV_ω:
mov rax, [rbp + 848]
lea rsp, [rbp + 864]
mov rbp, [rbp + 856]
jmp rax
  .globl proc_SGN_α
proc_SGN_α:
#=======================================================================================================================
    .global proc_SGN_α
    .global proc_SGN_β
    .global proc_SGN_γ
    .global proc_SGN_ω
  sub rsp, 960
  mov [rsp + 936], rcx
  mov [rsp + 944], rdx
  mov [rsp + 952], rbp
  mov rbp, rsp
  mov qword ptr [rsp], 0
  mov qword ptr [rsp + 8], 0
  mov qword ptr [rsp + 912], 0
  mov qword ptr [rsp + 920], rsp
proc_SGN_α_body:
# SGN     p1 = DRF(S[sp])
# IR_VAR
xchain174_n0_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        jmp              xchain174_n1_α
# IR_VAR
xchain174_n1_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        jmp              xchain174_n3_α
#         sp = sp - 1
# IR_VAR
xchain174_n2_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        jmp              xchain174_n4_α
# IR_SUBSCRIPT x[i] variable
xchain174_n3_α:
                        mov              rdi, qword ptr [rbp + 160]
                        mov              rsi, qword ptr [rbp + 168]
                        mov              rdx, qword ptr [rbp + 192]
                        mov              rcx, qword ptr [rbp + 200]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                        je               xchain174_n2_α
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        jmp              xchain174_n6_α
# IR_LIT_INTEGER
xchain174_n4_α:
                        mov              qword ptr [rbp + 352], 6
                        mov              rax, qword ptr [rip + .Lx179_0]
                        mov              qword ptr [rbp + 360], rax
                        jmp              xchain174_n7_α
.Lx179_0:
                        .quad            1
#         IDENT(S[sp], '-')                       :F(SGN1)
# IR_VAR
xchain174_n5_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        jmp              xchain174_n8_α
# IR_DEREF variable -> value
xchain174_n6_α:
                        mov              rdi, qword ptr [rbp + 224]
                        mov              rsi, qword ptr [rbp + 232]
                        call             rt_deref@PLT
                        cmp              eax, 99
                        je               xchain174_n2_α
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        jmp              xchain174_n10_α
xchain174_n7_α:
# IR_BINOP_ARITH
                        mov              eax, dword ptr [rbp + 320]
                        cmp              eax, 100
                        je               .Lx182_0
                        mov              eax, dword ptr [rbp + 320]
                        cmp              eax, 6
                        jne              .Lx182_2
.Lx182_1:
                        mov              rax, qword ptr [rbp + 328]
                        mov              rcx, 1
                        sub              rax, rcx
                        mov              qword ptr [rbp + 288], 6
                        mov              qword ptr [rbp + 296], rax
                        jmp              xchain174_n11_α
.Lx182_0:
                        mov              rdi, qword ptr [rbp + 320]
                        mov              rsi, qword ptr [rbp + 328]
                        mov              rdx, qword ptr [rbp + 352]
                        mov              rcx, qword ptr [rbp + 360]
                        mov              r8d, 1
                        lea              r9, [rbp + 288]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                        jne              xchain174_n11_α
.Lx182_2:
                        mov              rdi, qword ptr [rbp + 320]
                        mov              rsi, qword ptr [rbp + 328]
                        mov              rdx, qword ptr [rbp + 352]
                        mov              rcx, qword ptr [rbp + 360]
                        mov              r8d, 1
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                        je               xchain174_n5_α
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        jmp              xchain174_n11_α
xchain174_n7_β:
                        jmp              xchain174_n5_α
# IR_VAR
xchain174_n8_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        jmp              xchain174_n12_α
# SGN1    S[sp] = p1
# IR_VAR
xchain174_n9_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        jmp              xchain174_n13_α
xchain174_n10_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052336]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx186_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                        je               .Lx186_5
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx186_6]
                        lea              rdx, [rip + .Lx186_7]
                        jmp              rax
.Lx186_6:
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
                        jmp              .Lx186_2
.Lx186_7:
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
                        jmp              .Lx186_2
.Lx186_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                        jne              .Lx186_20
                        mov              rax, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                        jmp              .Lx186_21
.Lx186_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        call             rt_arg_stage@PLT
.Lx186_21:
                        mov              rdi, qword ptr [rip + .Lx186_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                        je               .Lx186_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx186_3]
                        lea              rdx, [rip + .Lx186_4]
                        jmp              rax
.Lx186_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        jmp              .Lx186_2
.Lx186_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        jmp              .Lx186_2
.Lx186_1:
                        call             rt_faildescr@PLT
.Lx186_2:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                        je               xchain174_n2_α
                        jmp              xchain174_n15_α
xchain174_n10_β:
                        jmp              xchain174_n2_α
.Lx186_0:
                        .quad            .Lx186_0_s
.Lx186_0_s:
                        .string          "DRF"
# IR_ASSIGN gva
xchain174_n11_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        mov              qword ptr [1879052464], rax
                        mov              qword ptr [1879052472], rdx
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        jmp              xchain174_n5_α
# IR_SUBSCRIPT x[i] variable
xchain174_n12_α:
                        mov              rdi, qword ptr [rbp + 448]
                        mov              rsi, qword ptr [rbp + 456]
                        mov              rdx, qword ptr [rbp + 480]
                        mov              rcx, qword ptr [rbp + 488]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                        je               xchain174_n9_α
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        jmp              xchain174_n16_α
# IR_VAR
xchain174_n13_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                        jmp              xchain174_n17_α
#         SGN = .dm                               :(NRETURN)
# IR_LIT_STRING
xchain174_n14_α:
                        mov              qword ptr [rbp + 880], 1
                        mov              rax, qword ptr [rip + .Lx190_0]
                        mov              qword ptr [rbp + 888], rax
                        jmp              xchain174_n18_α
.Lx190_0:
                        .quad            .Lx190_0_s
.Lx190_0_s:
                        .string          "dm"
# IR_ASSIGN gva
xchain174_n15_α:
                        mov              rax, qword ptr [rbp + 112]
                        mov              rdx, qword ptr [rbp + 120]
                        mov              qword ptr [1879052368], rax
                        mov              qword ptr [1879052376], rdx
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        jmp              xchain174_n2_α
# IR_DEREF variable -> value
xchain174_n16_α:
                        mov              rdi, qword ptr [rbp + 512]
                        mov              rsi, qword ptr [rbp + 520]
                        call             rt_deref@PLT
                        cmp              eax, 99
                        je               xchain174_n9_α
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        jmp              xchain174_n19_α
# IR_SUBSCRIPT x[i] variable
xchain174_n17_α:
                        mov              rdi, qword ptr [rbp + 672]
                        mov              rsi, qword ptr [rbp + 680]
                        mov              rdx, qword ptr [rbp + 704]
                        mov              rcx, qword ptr [rbp + 712]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                        je               xchain174_n14_α
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        jmp              xchain174_n20_α
xchain174_n18_α:
# BOX IR_CALL SNO$NAME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+880] -> [zr+848]
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 856], rax
                        .section         .rodata
.Lrkfn195:              .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn195]
                        lea              rsi, [rbp + 848]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              eax, 99
                        je               xchain174_n22_α
                        jmp              xchain174_n21_α
xchain174_n18_β:
                        jmp              xchain174_n22_α
# IR_LIT_STRING
xchain174_n19_α:
                        mov              qword ptr [rbp + 560], 1
                        mov              rax, qword ptr [rip + .Lx196_0]
                        mov              qword ptr [rbp + 568], rax
                        jmp              xchain174_n23_α
.Lx196_0:
                        .quad            .Lx196_0_s
.Lx196_0_s:
                        .string          "-"
# IR_VAR
xchain174_n20_α:
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                        jmp              xchain174_n24_α
# IR_ASSIGN gva
xchain174_n21_α:
                        mov              rax, qword ptr [rbp + 832]
                        mov              rdx, qword ptr [rbp + 840]
                        mov              qword ptr [1879052432], rax
                        mov              qword ptr [1879052440], rdx
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        jmp              xchain174_n22_α
# IR_LIT_STRING
xchain174_n22_α:
                        mov              qword ptr [rbp + 16], 1
                        mov              rax, qword ptr [rip + .Lx199_0]
                        mov              qword ptr [rbp + 24], rax
                        jmp              xchain174_n25_α
.Lx199_0:
                        .quad            .Lx199_0_s
.Lx199_0_s:
                        .string          ""
xchain174_n23_α:
# BOX IR_CALL IDENT(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
.Lrkfn201:              .string          "IDENT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn201]
                        lea              rsi, [rbp + 400]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 99
                        je               xchain174_n9_α
                        jmp              xchain174_n26_α
xchain174_n23_β:
                        jmp              xchain174_n9_α
# IR_ASSIGN_VAR
xchain174_n24_α:
                        mov              rdi, qword ptr [rbp + 736]
                        mov              rsi, qword ptr [rbp + 744]
                        mov              rdx, qword ptr [rbp + 768]
                        mov              rcx, qword ptr [rbp + 776]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                        je               xchain174_n14_α
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                        jmp              xchain174_n14_α
xchain174_n25_α:
# BOX IR_CALL SNO$NRET(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+16] -> [zr+64]
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 72], rax
                        .section         .rodata
.Lrkfn204:              .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn204]
                        lea              rsi, [rbp + 64]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                        je               proc_SGN_ω
                        jmp              proc_SGN_γ
xchain174_n25_β:
                        jmp              proc_SGN_ω
#         p1 = -p1
# IR_VAR
xchain174_n26_α:
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        jmp              xchain174_n27_α
# IR_UNOP
xchain174_n27_α:
                        mov              rdi, qword ptr [rbp + 640]
                        mov              rsi, qword ptr [rbp + 648]
                        call             rt_num_neg@PLT
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        jmp              xchain174_n28_α
# IR_ASSIGN gva
xchain174_n28_α:
                        mov              rax, qword ptr [rbp + 608]
                        mov              rdx, qword ptr [rbp + 616]
                        mov              qword ptr [1879052368], rax
                        mov              qword ptr [1879052376], rdx
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        jmp              xchain174_n9_α
proc_SGN_res:
add rsp, 8
pop rbp
proc_SGN_β:
jmp proc_SGN_ω
proc_SGN_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 936]
lea rsp, [rbp + 960]
mov rbp, [rbp + 952]
jmp rax
proc_SGN_ω:
mov rax, [rbp + 944]
lea rsp, [rbp + 960]
mov rbp, [rbp + 952]
jmp rax
  .globl proc_PAT$0_α
proc_PAT$0_α:
#=======================================================================================================================
    .global proc_PAT$0_α
    .global proc_PAT$0_β
    .global proc_PAT$0_γ
    .global proc_PAT$0_ω
  sub rsp, 144
  mov [rsp + 120], rcx
  mov [rsp + 128], rdx
  mov [rsp + 136], rbp
  mov rbp, rsp
  mov qword ptr [rsp], 0
  mov qword ptr [rsp + 8], 0
  mov qword ptr [rsp + 48], 0
  mov qword ptr [rsp + 56], 0
  mov qword ptr [rsp + 80], 0
  mov qword ptr [rsp + 88], 0
  mov qword ptr [rsp + 96], 0
  mov qword ptr [rsp + 104], rsp
mov qword ptr [rbp + 112], r8
mov dword ptr [rbp + 104], r14d
proc_PAT$0_attempt:
proc_PAT$0_α_body:
lea rax, [rip + xchain208_n2_β]
mov qword ptr [rbp + 80], rax
# IR_MATCH_CAPTURE_SAVE fc cell
xchain208_n0_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                        jmp              xchain208_n1_α
xchain208_n0_β:
                        add              rsp, 16
                        jmp              proc_PAT$0_scanfail
# IR_MATCH_ANY
xchain208_n1_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                        jl               .Lx212_239
                        add              rsp, 16
                        jmp              proc_PAT$0_scanfail
.Lx212_239:
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C0]
                        cmp              byte ptr [rdi+rsi], 0
                        jne              .Lx212_240
                        add              rsp, 16
                        jmp              proc_PAT$0_scanfail
.Lx212_240:
                        add              r14d, 1
                        jmp              xchain208_n2_α
xchain208_n1_β:
                        sub              r14d, 1
                        add              rsp, 16
                        jmp              proc_PAT$0_scanfail
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
xchain208_n2_α:
                        mov              eax, dword ptr [rsp + 0]
                        lea              rcx, [rip + .S0]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                        jmp              proc_PAT$0_scanhit
xchain208_n2_β:
                        sub              r12, 24
                        jmp              xchain208_n1_β
proc_PAT$0_scanhit:
cmp qword ptr [rbp + 112], 1
jne 7f
mov ecx, dword ptr [rbp + 104]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$0_γ
proc_PAT$0_scanfail:
cmp qword ptr [rbp + 112], 1
jne 8f
mov eax, dword ptr [rbp + 104]
inc eax
cmp eax, r15d
jg 8f
lea rcx, [rip + g_anchor]
cmp qword ptr [rcx], 0
jne 8f
mov dword ptr [rbp + 104], eax
mov r14d, eax
mov rsp, rbp
jmp proc_PAT$0_attempt
8:
jmp proc_PAT$0_ω
proc_PAT$0_res:
add rsp, 8
pop rbp
proc_PAT$0_β:
jmp qword ptr [rbp + 80]
proc_PAT$0_γ:
push rbp
lea rax, [rip + proc_PAT$0_res]
push rax
mov rax, [rbp + 120]
mov rbp, [rbp + 136]
jmp rax
proc_PAT$0_ω:
mov rax, [rbp + 128]
lea rsp, [rbp + 144]
mov rbp, [rbp + 136]
jmp rax
  .globl proc_PAT$1_α
proc_PAT$1_α:
#=======================================================================================================================
    .global proc_PAT$1_α
    .global proc_PAT$1_β
    .global proc_PAT$1_γ
    .global proc_PAT$1_ω
  sub rsp, 160
  mov [rsp + 136], rcx
  mov [rsp + 144], rdx
  mov [rsp + 152], rbp
  mov rbp, rsp
  mov qword ptr [rsp], 0
  mov qword ptr [rsp + 8], 0
  mov qword ptr [rsp + 48], 0
  mov qword ptr [rsp + 56], 0
  mov qword ptr [rsp + 96], 0
  mov qword ptr [rsp + 104], 0
  mov qword ptr [rsp + 112], 0
  mov qword ptr [rsp + 120], rsp
mov qword ptr [rbp + 128], r8
mov dword ptr [rbp + 120], r14d
proc_PAT$1_attempt:
proc_PAT$1_α_body:
lea rax, [rip + xchain215_n2_β]
mov qword ptr [rbp + 96], rax
# IR_MATCH_CAPTURE_SAVE fc cell
xchain215_n0_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                        jmp              xchain215_n1_α
xchain215_n0_β:
                        add              rsp, 16
                        jmp              proc_PAT$1_scanfail
# IR_MATCH_SPAN
xchain215_n1_α:
                        sub              rsp, 16
                        lea              rdi, [rip + .C1]
                        movsxd           rcx, r14d
.Lx219_0:
                        cmp              ecx, r15d
                        jge              .Lx219_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                        je               .Lx219_1
                        add              ecx, 1
                        cmp              ecx, r15d
                        jge              .Lx219_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                        je               .Lx219_1
                        add              ecx, 1
                        cmp              ecx, r15d
                        jge              .Lx219_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                        je               .Lx219_1
                        add              ecx, 1
                        cmp              ecx, r15d
                        jge              .Lx219_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                        je               .Lx219_1
                        add              ecx, 1
                        jmp              .Lx219_0
.Lx219_1:
                        cmp              ecx, r14d
                        jg               .Lx219_240
                        add              rsp, 16
                        add              rsp, 16
                        jmp              proc_PAT$1_scanfail
.Lx219_240:
                        mov              dword ptr [rsp + 4], r14d
                        mov              r14d, ecx
                        jmp              xchain215_n2_α
xchain215_n1_β:
xchain215_n1_β:
                        mov              r14d, dword ptr [rsp + 4]
                        add              rsp, 16
                        add              rsp, 16
                        jmp              proc_PAT$1_scanfail
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
xchain215_n2_α:
                        mov              eax, dword ptr [rsp + 16]
                        lea              rcx, [rip + .S0]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                        jmp              proc_PAT$1_scanhit
xchain215_n2_β:
                        sub              r12, 24
                        jmp              xchain215_n1_β
proc_PAT$1_scanhit:
cmp qword ptr [rbp + 128], 1
jne 7f
mov ecx, dword ptr [rbp + 120]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$1_γ
proc_PAT$1_scanfail:
cmp qword ptr [rbp + 128], 1
jne 8f
mov eax, dword ptr [rbp + 120]
inc eax
cmp eax, r15d
jg 8f
lea rcx, [rip + g_anchor]
cmp qword ptr [rcx], 0
jne 8f
mov dword ptr [rbp + 120], eax
mov r14d, eax
mov rsp, rbp
jmp proc_PAT$1_attempt
8:
jmp proc_PAT$1_ω
proc_PAT$1_res:
add rsp, 8
pop rbp
proc_PAT$1_β:
jmp qword ptr [rbp + 96]
proc_PAT$1_γ:
push rbp
lea rax, [rip + proc_PAT$1_res]
push rax
mov rax, [rbp + 136]
mov rbp, [rbp + 152]
jmp rax
proc_PAT$1_ω:
mov rax, [rbp + 144]
lea rsp, [rbp + 160]
mov rbp, [rbp + 152]
jmp rax
  .globl proc_PAT$2_α
proc_PAT$2_α:
#=======================================================================================================================
    .global proc_PAT$2_α
    .global proc_PAT$2_β
    .global proc_PAT$2_γ
    .global proc_PAT$2_ω
  sub rsp, 176
  mov [rsp + 152], rcx
  mov [rsp + 160], rdx
  mov [rsp + 168], rbp
  mov rbp, rsp
  mov qword ptr [rsp], 0
  mov qword ptr [rsp + 8], 0
  mov qword ptr [rsp + 112], 0
  mov qword ptr [rsp + 120], 0
  mov qword ptr [rsp + 128], 0
  mov qword ptr [rsp + 136], rsp
mov qword ptr [rbp + 144], r8
mov dword ptr [rbp + 136], r14d
proc_PAT$2_attempt:
proc_PAT$2_α_body:
lea rax, [rip + proc_PAT$2_ω]
mov qword ptr [rbp + 112], rax
# IR_MATCH_ALT_NARY
xchain222_n0_α:
                        mov              dword ptr [rbp + 16], r14d
                        mov              dword ptr [rbp + 20], 0
                        jmp              xchain222_n1_α
xchain222_n0_as:
                        jmp              proc_PAT$2_γ
xchain222_n0_β:
                        mov              eax, dword ptr [rbp + 20]
                        cmp              eax, 0
                        je               xchain222_n1_β
                        cmp              eax, 1
                        je               xchain222_n2_β
                        jmp              xchain222_n3_β
xchain222_n0_af:
                        add              dword ptr [rbp + 20], 1
                        mov              r14d, dword ptr [rbp + 16]
                        mov              eax, dword ptr [rbp + 20]
                        cmp              eax, 1
                        je               xchain222_n2_α
                        cmp              eax, 2
                        je               xchain222_n3_α
                        jmp              proc_PAT$2_ω
# IR_MATCH_DEFER (ZS-2 jmp-entry)
xchain222_n1_α:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                        jne              .Lx225_11
                        mov              rax, qword ptr [1879052544]
                        mov              rdx, qword ptr [1879052552]
                        cmp              eax, 3
                        jne              .Lx225_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                        jne              .Lx225_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                        jmp              .Lx225_10
.Lx225_9:
                        xor              eax, eax
.Lx225_10:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              qword ptr [rsi + 0], rax
.Lx225_11:
                        test             rax, rax
                        jz               .Lx225_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx225_4]
                        lea              rdx, [rip + .Lx225_5]
                        jmp              rax
.Lx225_4:
                        jmp              xchain222_n0_as
.Lx225_5:
                        jmp              xchain222_n0_af
.Lx225_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx225_2:
                        test             rax, rax
                        je               .Lx225_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx225_7]
                        lea              rdx, [rip + .Lx225_8]
                        jmp              rax
.Lx225_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx225_2
.Lx225_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx225_2
.Lx225_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                        js               xchain222_n0_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx225_6]
                        sub              rsp, 8
                        push             rax
                        jmp              xchain222_n0_as
.Lx225_6:
                        add              rsp, 16
                        jmp              xchain222_n0_af
xchain222_n1_β:
                        jmp              qword ptr [rsp]
# IR_MATCH_DEFER (ZS-2 jmp-entry)
xchain222_n2_α:
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                        jne              .Lx226_11
                        mov              rax, qword ptr [1879052560]
                        mov              rdx, qword ptr [1879052568]
                        cmp              eax, 3
                        jne              .Lx226_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                        jne              .Lx226_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                        jmp              .Lx226_10
.Lx226_9:
                        xor              eax, eax
.Lx226_10:
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              qword ptr [rsi + 0], rax
.Lx226_11:
                        test             rax, rax
                        jz               .Lx226_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx226_4]
                        lea              rdx, [rip + .Lx226_5]
                        jmp              rax
.Lx226_4:
                        jmp              xchain222_n0_as
.Lx226_5:
                        jmp              xchain222_n0_af
.Lx226_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S2]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx226_2:
                        test             rax, rax
                        je               .Lx226_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx226_7]
                        lea              rdx, [rip + .Lx226_8]
                        jmp              rax
.Lx226_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx226_2
.Lx226_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx226_2
.Lx226_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                        js               xchain222_n0_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx226_6]
                        sub              rsp, 8
                        push             rax
                        jmp              xchain222_n0_as
.Lx226_6:
                        add              rsp, 16
                        jmp              xchain222_n0_af
xchain222_n2_β:
                        jmp              qword ptr [rsp]
# IR_MATCH_SEQ_NARY (SPD SEQ-STATIC: zero-counter, sigma/phi statically wired)
xchain222_n3_α:
                        mov              dword ptr [rbp + 64], r14d
                        jmp              xchain222_n4_α
xchain222_n3_as:
                        jmp              xchain222_n0_as
xchain222_n3_β:
                        jmp              xchain222_n6_β
xchain222_n3_af:
                        jmp              xchain222_n0_af
# IR_MATCH_LIT
xchain222_n4_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                        jg               xchain222_n0_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 40
                        jne              xchain222_n0_af
                        add              r14d, 1
                        jmp              xchain222_n5_α
xchain222_n4_β:
                        sub              r14d, 1
                        jmp              xchain222_n0_af
# IR_MATCH_DEFER (ZS-2 jmp-entry)
xchain222_n5_α:
                        lea              rsi, [rip + g_sno_defer_cells+16]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                        jne              .Lx231_11
                        mov              rax, qword ptr [1879052624]
                        mov              rdx, qword ptr [1879052632]
                        cmp              eax, 3
                        jne              .Lx231_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                        jne              .Lx231_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                        jmp              .Lx231_10
.Lx231_9:
                        xor              eax, eax
.Lx231_10:
                        lea              rsi, [rip + g_sno_defer_cells+16]
                        mov              qword ptr [rsi + 0], rax
.Lx231_11:
                        test             rax, rax
                        jz               .Lx231_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx231_4]
                        lea              rdx, [rip + .Lx231_5]
                        jmp              rax
.Lx231_4:
                        jmp              xchain222_n6_α
.Lx231_5:
                        jmp              xchain222_n4_β
.Lx231_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S3]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx231_2:
                        test             rax, rax
                        je               .Lx231_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx231_7]
                        lea              rdx, [rip + .Lx231_8]
                        jmp              rax
.Lx231_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx231_2
.Lx231_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx231_2
.Lx231_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                        js               xchain222_n4_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx231_6]
                        sub              rsp, 8
                        push             rax
                        jmp              xchain222_n6_α
.Lx231_6:
                        add              rsp, 16
                        jmp              xchain222_n4_β
xchain222_n5_β:
                        jmp              qword ptr [rsp]
# IR_MATCH_LIT
xchain222_n6_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                        jg               xchain222_n5_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 41
                        jne              xchain222_n5_β
                        add              r14d, 1
                        jmp              xchain222_n0_as
xchain222_n6_β:
                        sub              r14d, 1
                        jmp              xchain222_n5_β
proc_PAT$2_scanhit:
cmp qword ptr [rbp + 144], 1
jne 7f
mov ecx, dword ptr [rbp + 136]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$2_γ
proc_PAT$2_scanfail:
cmp qword ptr [rbp + 144], 1
jne 8f
mov eax, dword ptr [rbp + 136]
inc eax
cmp eax, r15d
jg 8f
lea rcx, [rip + g_anchor]
cmp qword ptr [rcx], 0
jne 8f
mov dword ptr [rbp + 136], eax
mov r14d, eax
mov rsp, rbp
jmp proc_PAT$2_attempt
8:
jmp proc_PAT$2_ω
proc_PAT$2_res:
add rsp, 8
pop rbp
proc_PAT$2_β:
jmp qword ptr [rbp + 112]
proc_PAT$2_γ:
push rbp
lea rax, [rip + proc_PAT$2_res]
push rax
mov rax, [rbp + 152]
mov rbp, [rbp + 168]
jmp rax
proc_PAT$2_ω:
mov rax, [rbp + 160]
lea rsp, [rbp + 176]
mov rbp, [rbp + 168]
jmp rax
  .globl proc_PAT$3_α
proc_PAT$3_α:
#=======================================================================================================================
    .global proc_PAT$3_α
    .global proc_PAT$3_β
    .global proc_PAT$3_γ
    .global proc_PAT$3_ω
  sub rsp, 272
  mov [rsp + 248], rcx
  mov [rsp + 256], rdx
  mov [rsp + 264], rbp
  mov rbp, rsp
  mov qword ptr [rsp], 0
  mov qword ptr [rsp + 8], 0
  mov qword ptr [rsp + 96], 0
  mov qword ptr [rsp + 104], 0
  mov qword ptr [rsp + 160], 0
  mov qword ptr [rsp + 168], 0
  mov qword ptr [rsp + 208], 0
  mov qword ptr [rsp + 216], 0
  mov qword ptr [rsp + 224], 0
  mov qword ptr [rsp + 232], rsp
mov qword ptr [rbp + 240], r8
mov dword ptr [rbp + 232], r14d
proc_PAT$3_attempt:
proc_PAT$3_α_body:
lea rax, [rip + proc_PAT$3_ω]
mov qword ptr [rbp + 208], rax
# IR_MATCH_ALT_NARY
xchain234_n0_α:
                        mov              dword ptr [rbp + 16], r14d
                        mov              dword ptr [rbp + 20], 0
                        jmp              xchain234_n1_α
xchain234_n0_as:
                        jmp              proc_PAT$3_γ
xchain234_n0_β:
                        mov              eax, dword ptr [rbp + 20]
                        cmp              eax, 0
                        je               xchain234_n1_β
                        jmp              xchain234_n2_β
xchain234_n0_af:
                        add              dword ptr [rbp + 20], 1
                        mov              r14d, dword ptr [rbp + 16]
                        mov              eax, dword ptr [rbp + 20]
                        cmp              eax, 1
                        je               xchain234_n2_α
                        jmp              proc_PAT$3_ω
# IR_MATCH_DEFER (ZS-2 jmp-entry)
xchain234_n1_α:
# s137 SEALED defer: fence-demarked sync point (watermark in defer.pad)
                        mov              qword ptr [rbp + 32], rsp
                        mov              rax, qword ptr [1879052576]
                        mov              rdx, qword ptr [1879052584]
                        cmp              eax, 3
                        jne              .Lx237_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                        jne              .Lx237_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                        jmp              .Lx237_10
.Lx237_9:
                        xor              eax, eax
.Lx237_10:
                        test             rax, rax
                        jz               .Lx237_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx237_4]
                        lea              rdx, [rip + .Lx237_5]
                        jmp              rax
.Lx237_4:
                        mov              rsp, qword ptr [rbp + 32]
                        jmp              xchain234_n0_as
.Lx237_5:
                        mov              rsp, qword ptr [rbp + 32]
                        jmp              xchain234_n0_af
.Lx237_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S4]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx237_2:
                        test             rax, rax
                        je               .Lx237_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx237_7]
                        lea              rdx, [rip + .Lx237_8]
                        jmp              rax
.Lx237_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx237_2
.Lx237_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx237_2
.Lx237_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                        js               xchain234_n0_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx237_6]
                        sub              rsp, 8
                        push             rax
                        jmp              xchain234_n0_as
.Lx237_6:
                        add              rsp, 16
                        jmp              xchain234_n0_af
xchain234_n1_β:
                        mov              rsp, qword ptr [rbp + 32]
                        jmp              xchain234_n0_af
# IR_MATCH_SEQ_NARY (SPD SEQ-STATIC: zero-counter, sigma/phi statically wired)
xchain234_n2_α:
                        mov              dword ptr [rbp + 48], r14d
                        jmp              xchain234_n3_α
xchain234_n2_as:
                        jmp              xchain234_n0_as
xchain234_n2_β:
                        jmp              xchain234_n6_β
xchain234_n2_af:
                        jmp              xchain234_n0_af
# IR_MATCH_CAPTURE_SAVE fc cell
xchain234_n3_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                        jmp              xchain234_n7_α
xchain234_n3_β:
                        add              rsp, 16
                        jmp              xchain234_n0_af
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
xchain234_n4_α:
                        mov              eax, dword ptr [rsp + 0]
                        lea              rcx, [rip + .S0]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                        jmp              xchain234_n5_α
xchain234_n4_β:
                        sub              r12, 24
                        jmp              xchain234_n7_β
# IR_MATCH_CAPTURE_SAVE push
xchain234_n5_α:
                        lea              rdi, [rbp + 160]
                        mov              esi, r14d
                        call             rt_cap_push@PLT
                        jmp              xchain234_n8_α
xchain234_n5_β:
                        lea              rdi, [rbp + 160]
                        call             rt_cap_pop@PLT
                        jmp              xchain234_n4_β
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
xchain234_n6_α:
                        lea              rdi, [rbp + 160]
                        call             rt_cap_top@PLT
                        lea              rcx, [rip + .S5]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                        jmp              xchain234_n0_as
xchain234_n6_β:
                        sub              r12, 24
                        jmp              xchain234_n8_β
# IR_MATCH_ANY
xchain234_n7_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                        jl               .Lx249_240
                        add              rsp, 16
                        jmp              xchain234_n0_af
.Lx249_240:
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 43
                        je               .Lx249_0
                        cmp              esi, 45
                        je               .Lx249_0
                        add              rsp, 16
                        jmp              xchain234_n0_af
.Lx249_0:
                        add              r14d, 1
                        jmp              xchain234_n4_α
xchain234_n7_β:
                        sub              r14d, 1
                        add              rsp, 16
                        jmp              xchain234_n0_af
# IR_MATCH_DEFER (ZS-2 jmp-entry)
xchain234_n8_α:
# s137 SEALED defer: fence-demarked sync point (watermark in defer.pad)
                        mov              qword ptr [rbp + 192], rsp
                        mov              rax, qword ptr [1879052592]
                        mov              rdx, qword ptr [1879052600]
                        cmp              eax, 3
                        jne              .Lx250_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                        jne              .Lx250_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                        jmp              .Lx250_10
.Lx250_9:
                        xor              eax, eax
.Lx250_10:
                        test             rax, rax
                        jz               .Lx250_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx250_4]
                        lea              rdx, [rip + .Lx250_5]
                        jmp              rax
.Lx250_4:
                        mov              rsp, qword ptr [rbp + 192]
                        jmp              xchain234_n6_α
.Lx250_5:
                        mov              rsp, qword ptr [rbp + 192]
                        jmp              xchain234_n5_β
.Lx250_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S6]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx250_2:
                        test             rax, rax
                        je               .Lx250_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx250_7]
                        lea              rdx, [rip + .Lx250_8]
                        jmp              rax
.Lx250_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx250_2
.Lx250_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx250_2
.Lx250_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                        js               xchain234_n5_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx250_6]
                        sub              rsp, 8
                        push             rax
                        jmp              xchain234_n6_α
.Lx250_6:
                        add              rsp, 16
                        jmp              xchain234_n5_β
xchain234_n8_β:
                        mov              rsp, qword ptr [rbp + 192]
                        jmp              xchain234_n5_β
proc_PAT$3_scanhit:
cmp qword ptr [rbp + 240], 1
jne 7f
mov ecx, dword ptr [rbp + 232]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$3_γ
proc_PAT$3_scanfail:
cmp qword ptr [rbp + 240], 1
jne 8f
mov eax, dword ptr [rbp + 232]
inc eax
cmp eax, r15d
jg 8f
lea rcx, [rip + g_anchor]
cmp qword ptr [rcx], 0
jne 8f
mov dword ptr [rbp + 232], eax
mov r14d, eax
mov rsp, rbp
jmp proc_PAT$3_attempt
8:
jmp proc_PAT$3_ω
proc_PAT$3_res:
add rsp, 8
pop rbp
proc_PAT$3_β:
jmp qword ptr [rbp + 208]
proc_PAT$3_γ:
push rbp
lea rax, [rip + proc_PAT$3_res]
push rax
mov rax, [rbp + 248]
mov rbp, [rbp + 264]
jmp rax
proc_PAT$3_ω:
mov rax, [rbp + 256]
lea rsp, [rbp + 272]
mov rbp, [rbp + 264]
jmp rax
  .globl proc_PAT$4_α
proc_PAT$4_α:
#=======================================================================================================================
    .global proc_PAT$4_α
    .global proc_PAT$4_β
    .global proc_PAT$4_γ
    .global proc_PAT$4_ω
  sub rsp, 400
  mov [rsp + 376], rcx
  mov [rsp + 384], rdx
  mov [rsp + 392], rbp
  mov rbp, rsp
  mov qword ptr [rsp], 0
  mov qword ptr [rsp + 8], 0
  mov qword ptr [rsp + 192], 0
  mov qword ptr [rsp + 200], 0
  mov qword ptr [rsp + 288], 0
  mov qword ptr [rsp + 296], 0
  mov qword ptr [rsp + 336], 0
  mov qword ptr [rsp + 344], 0
  mov qword ptr [rsp + 352], 0
  mov qword ptr [rsp + 360], rsp
mov qword ptr [rbp + 368], r8
mov dword ptr [rbp + 360], r14d
proc_PAT$4_attempt:
proc_PAT$4_α_body:
lea rax, [rip + xchain251_n0_β]
mov qword ptr [rbp + 336], rax
# IR_MATCH_SEQ_NARY (SPD SEQ-STATIC: zero-counter, sigma/phi statically wired)
xchain251_n0_α:
                        mov              dword ptr [rbp + 16], r14d
                        jmp              xchain251_n1_α
xchain251_n0_as:
                        jmp              proc_PAT$4_γ
xchain251_n0_β:
                        jmp              xchain251_n2_β
xchain251_n0_af:
                        jmp              proc_PAT$4_ω
# IR_MATCH_DEFER (ZS-2 jmp-entry)
xchain251_n1_α:
# s137 SEALED defer: fence-demarked sync point (watermark in defer.pad)
                        mov              qword ptr [rbp + 32], rsp
                        mov              rax, qword ptr [1879052592]
                        mov              rdx, qword ptr [1879052600]
                        cmp              eax, 3
                        jne              .Lx254_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                        jne              .Lx254_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                        jmp              .Lx254_10
.Lx254_9:
                        xor              eax, eax
.Lx254_10:
                        test             rax, rax
                        jz               .Lx254_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx254_4]
                        lea              rdx, [rip + .Lx254_5]
                        jmp              rax
.Lx254_4:
                        mov              rsp, qword ptr [rbp + 32]
                        jmp              xchain251_n2_α
.Lx254_5:
                        mov              rsp, qword ptr [rbp + 32]
                        jmp              proc_PAT$4_ω
.Lx254_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S6]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx254_2:
                        test             rax, rax
                        je               .Lx254_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx254_7]
                        lea              rdx, [rip + .Lx254_8]
                        jmp              rax
.Lx254_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx254_2
.Lx254_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx254_2
.Lx254_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                        js               proc_PAT$4_ω
                        mov              r14d, eax
                        lea              rax, [rip + .Lx254_6]
                        sub              rsp, 8
                        push             rax
                        jmp              xchain251_n2_α
.Lx254_6:
                        add              rsp, 16
                        jmp              proc_PAT$4_ω
xchain251_n1_β:
                        mov              rsp, qword ptr [rbp + 32]
                        jmp              proc_PAT$4_ω
# IR_MATCH_ARBNO_NARY (ZB-FC-4 rsp linked-frame-chain)
xchain251_n2_α:
                        mov              dword ptr [rbp + 64], r14d
                        mov              dword ptr [rbp + 68], r14d
                        mov              dword ptr [rbp + 72], 0
                        mov              qword ptr [rbp + 88], rsp
                        mov              qword ptr [rbp + 80], 0
                        jmp              proc_PAT$4_γ
xchain251_n2_β:
                        mov              r14d, dword ptr [rbp + 68]
                        mov              rax, qword ptr [rbp + 80]
                        sub              rsp, 272
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              eax, 0
                        mov              qword ptr [rsp + 120], rax
                        mov              qword ptr [rsp + 216], rax
                        mov              qword ptr [rbp + 80], rsp
                        mov              rbp, rsp
                        add              rbp, -72
                        jmp              xchain251_n3_α
xchain251_n2_as:
                        mov              eax, dword ptr [rbp + 80]
                        cmp              r14d, eax
                        je               xchain251_n3_β
                        mov              rbp, qword ptr [rbp + 72]
                        mov              eax, dword ptr [rbp + 72]
                        add              eax, 1
                        mov              dword ptr [rbp + 72], eax
                        mov              dword ptr [rbp + 68], r14d
                        jmp              proc_PAT$4_γ
xchain251_n2_af:
                        mov              rax, qword ptr [rbp + 88]
                        mov              rdx, qword ptr [rbp + 72]
                        lea              rsp, [rbp + 344]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 72]
                        test             ecx, ecx
                        jz               .Lx256_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 72], ecx
                        mov              qword ptr [rbp + 80], rax
                        lea              rbp, [rax + -72]
                        jmp              xchain251_n3_β
.Lx256_2:
                        mov              r14d, dword ptr [rbp + 64]
                        mov              rsp, qword ptr [rbp + 88]
                        jmp              xchain251_n1_β
# IR_MATCH_ALT_NARY
xchain251_n3_α:
                        mov              dword ptr [rbp + 112], r14d
                        mov              dword ptr [rbp + 116], 0
                        jmp              xchain251_n5_α
xchain251_n3_as:
                        jmp              xchain251_n2_as
xchain251_n3_β:
                        mov              eax, dword ptr [rbp + 116]
                        cmp              eax, 0
                        je               xchain251_n5_β
                        jmp              xchain251_n6_β
xchain251_n3_af:
                        add              dword ptr [rbp + 116], 1
                        mov              r14d, dword ptr [rbp + 112]
                        mov              eax, dword ptr [rbp + 116]
                        cmp              eax, 1
                        je               xchain251_n6_α
                        jmp              xchain251_n2_af
# IR_MATCH_DEFER (ZS-2 jmp-entry)
xchain251_n4_α:
# s137 SEALED defer: fence-demarked sync point (watermark in defer.pad)
                        mov              qword ptr [rbp + 320], rsp
                        mov              rax, qword ptr [1879052592]
                        mov              rdx, qword ptr [1879052600]
                        cmp              eax, 3
                        jne              .Lx259_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                        jne              .Lx259_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                        jmp              .Lx259_10
.Lx259_9:
                        xor              eax, eax
.Lx259_10:
                        test             rax, rax
                        jz               .Lx259_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx259_4]
                        lea              rdx, [rip + .Lx259_5]
                        jmp              rax
.Lx259_4:
                        mov              rsp, qword ptr [rbp + 320]
                        jmp              xchain251_n7_α
.Lx259_5:
                        mov              rsp, qword ptr [rbp + 320]
                        jmp              xchain251_n8_β
.Lx259_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S6]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx259_2:
                        test             rax, rax
                        je               .Lx259_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx259_7]
                        lea              rdx, [rip + .Lx259_8]
                        jmp              rax
.Lx259_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx259_2
.Lx259_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx259_2
.Lx259_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                        js               xchain251_n8_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx259_6]
                        sub              rsp, 8
                        push             rax
                        jmp              xchain251_n7_α
.Lx259_6:
                        add              rsp, 16
                        jmp              xchain251_n8_β
xchain251_n4_β:
                        mov              rsp, qword ptr [rbp + 320]
                        jmp              xchain251_n8_β
# IR_MATCH_SEQ_NARY (SPD SEQ-STATIC: zero-counter, sigma/phi statically wired)
xchain251_n5_α:
                        mov              dword ptr [rbp + 128], r14d
                        jmp              xchain251_n9_α
xchain251_n5_as:
                        jmp              xchain251_n3_as
xchain251_n5_β:
                        jmp              xchain251_n11_β
xchain251_n5_af:
                        jmp              xchain251_n3_af
# IR_MATCH_SEQ_NARY (SPD SEQ-STATIC: zero-counter, sigma/phi statically wired)
xchain251_n6_α:
                        mov              dword ptr [rbp + 240], r14d
                        jmp              xchain251_n12_α
xchain251_n6_as:
                        jmp              xchain251_n3_as
xchain251_n6_β:
                        jmp              xchain251_n7_β
xchain251_n6_af:
                        jmp              xchain251_n3_af
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
xchain251_n7_α:
                        lea              rdi, [rbp + 288]
                        call             rt_cap_top@PLT
                        lea              rcx, [rip + .S7]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                        jmp              xchain251_n3_as
xchain251_n7_β:
                        sub              r12, 24
                        jmp              xchain251_n4_β
# IR_MATCH_CAPTURE_SAVE push
xchain251_n8_α:
                        lea              rdi, [rbp + 288]
                        mov              esi, r14d
                        call             rt_cap_push@PLT
                        jmp              xchain251_n4_α
xchain251_n8_β:
                        lea              rdi, [rbp + 288]
                        call             rt_cap_pop@PLT
                        jmp              xchain251_n12_β
# IR_MATCH_LIT
xchain251_n9_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                        jg               xchain251_n3_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 42
                        jne              xchain251_n3_af
                        add              r14d, 1
                        jmp              xchain251_n10_α
xchain251_n9_β:
                        sub              r14d, 1
                        jmp              xchain251_n3_af
# IR_MATCH_CAPTURE_SAVE push
xchain251_n10_α:
                        lea              rdi, [rbp + 192]
                        mov              esi, r14d
                        call             rt_cap_push@PLT
                        jmp              xchain251_n13_α
xchain251_n10_β:
                        lea              rdi, [rbp + 192]
                        call             rt_cap_pop@PLT
                        jmp              xchain251_n9_β
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
xchain251_n11_α:
                        lea              rdi, [rbp + 192]
                        call             rt_cap_top@PLT
                        lea              rcx, [rip + .S8]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                        jmp              xchain251_n3_as
xchain251_n11_β:
                        sub              r12, 24
                        jmp              xchain251_n13_β
# IR_MATCH_LIT
xchain251_n12_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                        jg               xchain251_n3_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 47
                        jne              xchain251_n3_af
                        add              r14d, 1
                        jmp              xchain251_n8_α
xchain251_n12_β:
                        sub              r14d, 1
                        jmp              xchain251_n3_af
# IR_MATCH_DEFER (ZS-2 jmp-entry)
xchain251_n13_α:
# s137 SEALED defer: fence-demarked sync point (watermark in defer.pad)
                        mov              qword ptr [rbp + 224], rsp
                        mov              rax, qword ptr [1879052592]
                        mov              rdx, qword ptr [1879052600]
                        cmp              eax, 3
                        jne              .Lx276_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                        jne              .Lx276_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                        jmp              .Lx276_10
.Lx276_9:
                        xor              eax, eax
.Lx276_10:
                        test             rax, rax
                        jz               .Lx276_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx276_4]
                        lea              rdx, [rip + .Lx276_5]
                        jmp              rax
.Lx276_4:
                        mov              rsp, qword ptr [rbp + 224]
                        jmp              xchain251_n11_α
.Lx276_5:
                        mov              rsp, qword ptr [rbp + 224]
                        jmp              xchain251_n10_β
.Lx276_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S6]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx276_2:
                        test             rax, rax
                        je               .Lx276_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx276_7]
                        lea              rdx, [rip + .Lx276_8]
                        jmp              rax
.Lx276_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx276_2
.Lx276_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx276_2
.Lx276_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                        js               xchain251_n10_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx276_6]
                        sub              rsp, 8
                        push             rax
                        jmp              xchain251_n11_α
.Lx276_6:
                        add              rsp, 16
                        jmp              xchain251_n10_β
xchain251_n13_β:
                        mov              rsp, qword ptr [rbp + 224]
                        jmp              xchain251_n10_β
proc_PAT$4_scanhit:
cmp qword ptr [rbp + 368], 1
jne 7f
mov ecx, dword ptr [rbp + 360]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$4_γ
proc_PAT$4_scanfail:
cmp qword ptr [rbp + 368], 1
jne 8f
mov eax, dword ptr [rbp + 360]
inc eax
cmp eax, r15d
jg 8f
lea rcx, [rip + g_anchor]
cmp qword ptr [rcx], 0
jne 8f
mov dword ptr [rbp + 360], eax
mov r14d, eax
mov rsp, rbp
jmp proc_PAT$4_attempt
8:
jmp proc_PAT$4_ω
proc_PAT$4_res:
add rsp, 8
pop rbp
proc_PAT$4_β:
jmp qword ptr [rbp + 336]
proc_PAT$4_γ:
push rbp
lea rax, [rip + proc_PAT$4_res]
push rax
mov rax, [rbp + 376]
mov rbp, [rbp + 392]
jmp rax
proc_PAT$4_ω:
mov rax, [rbp + 384]
lea rsp, [rbp + 400]
mov rbp, [rbp + 392]
jmp rax
  .globl proc_PAT$5_α
proc_PAT$5_α:
#=======================================================================================================================
    .global proc_PAT$5_α
    .global proc_PAT$5_β
    .global proc_PAT$5_γ
    .global proc_PAT$5_ω
  sub rsp, 400
  mov [rsp + 376], rcx
  mov [rsp + 384], rdx
  mov [rsp + 392], rbp
  mov rbp, rsp
  mov qword ptr [rsp], 0
  mov qword ptr [rsp + 8], 0
  mov qword ptr [rsp + 192], 0
  mov qword ptr [rsp + 200], 0
  mov qword ptr [rsp + 288], 0
  mov qword ptr [rsp + 296], 0
  mov qword ptr [rsp + 336], 0
  mov qword ptr [rsp + 344], 0
  mov qword ptr [rsp + 352], 0
  mov qword ptr [rsp + 360], rsp
mov qword ptr [rbp + 368], r8
mov dword ptr [rbp + 360], r14d
proc_PAT$5_attempt:
proc_PAT$5_α_body:
lea rax, [rip + xchain277_n0_β]
mov qword ptr [rbp + 336], rax
# IR_MATCH_SEQ_NARY (SPD SEQ-STATIC: zero-counter, sigma/phi statically wired)
xchain277_n0_α:
                        mov              dword ptr [rbp + 16], r14d
                        jmp              xchain277_n1_α
xchain277_n0_as:
                        jmp              proc_PAT$5_γ
xchain277_n0_β:
                        jmp              xchain277_n2_β
xchain277_n0_af:
                        jmp              proc_PAT$5_ω
# IR_MATCH_DEFER (ZS-2 jmp-entry)
xchain277_n1_α:
                        lea              rsi, [rip + g_sno_defer_cells+24]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                        jne              .Lx280_11
                        mov              rax, qword ptr [1879052608]
                        mov              rdx, qword ptr [1879052616]
                        cmp              eax, 3
                        jne              .Lx280_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                        jne              .Lx280_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                        jmp              .Lx280_10
.Lx280_9:
                        xor              eax, eax
.Lx280_10:
                        lea              rsi, [rip + g_sno_defer_cells+24]
                        mov              qword ptr [rsi + 0], rax
.Lx280_11:
                        test             rax, rax
                        jz               .Lx280_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx280_4]
                        lea              rdx, [rip + .Lx280_5]
                        jmp              rax
.Lx280_4:
                        jmp              xchain277_n2_α
.Lx280_5:
                        jmp              proc_PAT$5_ω
.Lx280_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S9]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx280_2:
                        test             rax, rax
                        je               .Lx280_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx280_7]
                        lea              rdx, [rip + .Lx280_8]
                        jmp              rax
.Lx280_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx280_2
.Lx280_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx280_2
.Lx280_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                        js               proc_PAT$5_ω
                        mov              r14d, eax
                        lea              rax, [rip + .Lx280_6]
                        sub              rsp, 8
                        push             rax
                        jmp              xchain277_n2_α
.Lx280_6:
                        add              rsp, 16
                        jmp              proc_PAT$5_ω
xchain277_n1_β:
                        jmp              qword ptr [rsp]
# IR_MATCH_ARBNO_NARY (ZB-FC-4 rsp linked-frame-chain)
xchain277_n2_α:
                        mov              dword ptr [rbp + 64], r14d
                        mov              dword ptr [rbp + 68], r14d
                        mov              dword ptr [rbp + 72], 0
                        mov              qword ptr [rbp + 88], rsp
                        mov              qword ptr [rbp + 80], 0
                        jmp              proc_PAT$5_γ
xchain277_n2_β:
                        mov              r14d, dword ptr [rbp + 68]
                        mov              rax, qword ptr [rbp + 80]
                        sub              rsp, 272
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              eax, 0
                        mov              qword ptr [rsp + 120], rax
                        mov              qword ptr [rsp + 216], rax
                        mov              qword ptr [rbp + 80], rsp
                        mov              rbp, rsp
                        add              rbp, -72
                        jmp              xchain277_n3_α
xchain277_n2_as:
                        mov              eax, dword ptr [rbp + 80]
                        cmp              r14d, eax
                        je               xchain277_n3_β
                        mov              rbp, qword ptr [rbp + 72]
                        mov              eax, dword ptr [rbp + 72]
                        add              eax, 1
                        mov              dword ptr [rbp + 72], eax
                        mov              dword ptr [rbp + 68], r14d
                        jmp              proc_PAT$5_γ
xchain277_n2_af:
                        mov              rax, qword ptr [rbp + 88]
                        mov              rdx, qword ptr [rbp + 72]
                        lea              rsp, [rbp + 344]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 72]
                        test             ecx, ecx
                        jz               .Lx282_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 72], ecx
                        mov              qword ptr [rbp + 80], rax
                        lea              rbp, [rax + -72]
                        jmp              xchain277_n3_β
.Lx282_2:
                        mov              r14d, dword ptr [rbp + 64]
                        mov              rsp, qword ptr [rbp + 88]
                        jmp              xchain277_n1_β
# IR_MATCH_ALT_NARY
xchain277_n3_α:
                        mov              dword ptr [rbp + 112], r14d
                        mov              dword ptr [rbp + 116], 0
                        jmp              xchain277_n5_α
xchain277_n3_as:
                        jmp              xchain277_n2_as
xchain277_n3_β:
                        mov              eax, dword ptr [rbp + 116]
                        cmp              eax, 0
                        je               xchain277_n5_β
                        jmp              xchain277_n6_β
xchain277_n3_af:
                        add              dword ptr [rbp + 116], 1
                        mov              r14d, dword ptr [rbp + 112]
                        mov              eax, dword ptr [rbp + 116]
                        cmp              eax, 1
                        je               xchain277_n6_α
                        jmp              xchain277_n2_af
# IR_MATCH_DEFER (ZS-2 jmp-entry)
xchain277_n4_α:
                        lea              rsi, [rip + g_sno_defer_cells+32]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                        jne              .Lx285_11
                        mov              rax, qword ptr [1879052608]
                        mov              rdx, qword ptr [1879052616]
                        cmp              eax, 3
                        jne              .Lx285_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                        jne              .Lx285_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                        jmp              .Lx285_10
.Lx285_9:
                        xor              eax, eax
.Lx285_10:
                        lea              rsi, [rip + g_sno_defer_cells+32]
                        mov              qword ptr [rsi + 0], rax
.Lx285_11:
                        test             rax, rax
                        jz               .Lx285_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx285_4]
                        lea              rdx, [rip + .Lx285_5]
                        jmp              rax
.Lx285_4:
                        jmp              xchain277_n7_α
.Lx285_5:
                        jmp              xchain277_n8_β
.Lx285_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S9]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx285_2:
                        test             rax, rax
                        je               .Lx285_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx285_7]
                        lea              rdx, [rip + .Lx285_8]
                        jmp              rax
.Lx285_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx285_2
.Lx285_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx285_2
.Lx285_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                        js               xchain277_n8_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx285_6]
                        sub              rsp, 8
                        push             rax
                        jmp              xchain277_n7_α
.Lx285_6:
                        add              rsp, 16
                        jmp              xchain277_n8_β
xchain277_n4_β:
                        jmp              qword ptr [rsp]
# IR_MATCH_SEQ_NARY (SPD SEQ-STATIC: zero-counter, sigma/phi statically wired)
xchain277_n5_α:
                        mov              dword ptr [rbp + 128], r14d
                        jmp              xchain277_n9_α
xchain277_n5_as:
                        jmp              xchain277_n3_as
xchain277_n5_β:
                        jmp              xchain277_n11_β
xchain277_n5_af:
                        jmp              xchain277_n3_af
# IR_MATCH_SEQ_NARY (SPD SEQ-STATIC: zero-counter, sigma/phi statically wired)
xchain277_n6_α:
                        mov              dword ptr [rbp + 240], r14d
                        jmp              xchain277_n12_α
xchain277_n6_as:
                        jmp              xchain277_n3_as
xchain277_n6_β:
                        jmp              xchain277_n7_β
xchain277_n6_af:
                        jmp              xchain277_n3_af
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
xchain277_n7_α:
                        lea              rdi, [rbp + 288]
                        call             rt_cap_top@PLT
                        lea              rcx, [rip + .S10]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                        jmp              xchain277_n3_as
xchain277_n7_β:
                        sub              r12, 24
                        jmp              xchain277_n4_β
# IR_MATCH_CAPTURE_SAVE push
xchain277_n8_α:
                        lea              rdi, [rbp + 288]
                        mov              esi, r14d
                        call             rt_cap_push@PLT
                        jmp              xchain277_n4_α
xchain277_n8_β:
                        lea              rdi, [rbp + 288]
                        call             rt_cap_pop@PLT
                        jmp              xchain277_n12_β
# IR_MATCH_LIT
xchain277_n9_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                        jg               xchain277_n3_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 43
                        jne              xchain277_n3_af
                        add              r14d, 1
                        jmp              xchain277_n10_α
xchain277_n9_β:
                        sub              r14d, 1
                        jmp              xchain277_n3_af
# IR_MATCH_CAPTURE_SAVE push
xchain277_n10_α:
                        lea              rdi, [rbp + 192]
                        mov              esi, r14d
                        call             rt_cap_push@PLT
                        jmp              xchain277_n13_α
xchain277_n10_β:
                        lea              rdi, [rbp + 192]
                        call             rt_cap_pop@PLT
                        jmp              xchain277_n9_β
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
xchain277_n11_α:
                        lea              rdi, [rbp + 192]
                        call             rt_cap_top@PLT
                        lea              rcx, [rip + .S11]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                        jmp              xchain277_n3_as
xchain277_n11_β:
                        sub              r12, 24
                        jmp              xchain277_n13_β
# IR_MATCH_LIT
xchain277_n12_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                        jg               xchain277_n3_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 45
                        jne              xchain277_n3_af
                        add              r14d, 1
                        jmp              xchain277_n8_α
xchain277_n12_β:
                        sub              r14d, 1
                        jmp              xchain277_n3_af
# IR_MATCH_DEFER (ZS-2 jmp-entry)
xchain277_n13_α:
                        lea              rsi, [rip + g_sno_defer_cells+40]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                        jne              .Lx302_11
                        mov              rax, qword ptr [1879052608]
                        mov              rdx, qword ptr [1879052616]
                        cmp              eax, 3
                        jne              .Lx302_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                        jne              .Lx302_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                        jmp              .Lx302_10
.Lx302_9:
                        xor              eax, eax
.Lx302_10:
                        lea              rsi, [rip + g_sno_defer_cells+40]
                        mov              qword ptr [rsi + 0], rax
.Lx302_11:
                        test             rax, rax
                        jz               .Lx302_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx302_4]
                        lea              rdx, [rip + .Lx302_5]
                        jmp              rax
.Lx302_4:
                        jmp              xchain277_n11_α
.Lx302_5:
                        jmp              xchain277_n10_β
.Lx302_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S9]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx302_2:
                        test             rax, rax
                        je               .Lx302_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx302_7]
                        lea              rdx, [rip + .Lx302_8]
                        jmp              rax
.Lx302_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx302_2
.Lx302_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx302_2
.Lx302_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                        js               xchain277_n10_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx302_6]
                        sub              rsp, 8
                        push             rax
                        jmp              xchain277_n11_α
.Lx302_6:
                        add              rsp, 16
                        jmp              xchain277_n10_β
xchain277_n13_β:
                        jmp              qword ptr [rsp]
proc_PAT$5_scanhit:
cmp qword ptr [rbp + 368], 1
jne 7f
mov ecx, dword ptr [rbp + 360]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$5_γ
proc_PAT$5_scanfail:
cmp qword ptr [rbp + 368], 1
jne 8f
mov eax, dword ptr [rbp + 360]
inc eax
cmp eax, r15d
jg 8f
lea rcx, [rip + g_anchor]
cmp qword ptr [rcx], 0
jne 8f
mov dword ptr [rbp + 360], eax
mov r14d, eax
mov rsp, rbp
jmp proc_PAT$5_attempt
8:
jmp proc_PAT$5_ω
proc_PAT$5_res:
add rsp, 8
pop rbp
proc_PAT$5_β:
jmp qword ptr [rbp + 336]
proc_PAT$5_γ:
push rbp
lea rax, [rip + proc_PAT$5_res]
push rax
mov rax, [rbp + 376]
mov rbp, [rbp + 392]
jmp rax
proc_PAT$5_ω:
mov rax, [rbp + 384]
lea rsp, [rbp + 400]
mov rbp, [rbp + 392]
jmp rax
  .globl proc_PAT$6_α
proc_PAT$6_α:
#=======================================================================================================================
    .global proc_PAT$6_α
    .global proc_PAT$6_β
    .global proc_PAT$6_γ
    .global proc_PAT$6_ω
  sub rsp, 192
  mov [rsp + 168], rcx
  mov [rsp + 176], rdx
  mov [rsp + 184], rbp
  mov rbp, rsp
  mov qword ptr [rsp], 0
  mov qword ptr [rsp + 8], 0
  mov qword ptr [rsp + 128], 0
  mov qword ptr [rsp + 136], 0
  mov qword ptr [rsp + 144], 0
  mov qword ptr [rsp + 152], rsp
mov qword ptr [rbp + 160], r8
mov dword ptr [rbp + 152], r14d
proc_PAT$6_attempt:
proc_PAT$6_α_body:
lea rax, [rip + proc_PAT$6_ω]
mov qword ptr [rbp + 128], rax
# IR_LIT_INTEGER
xchain303_n0_α:
                        mov              qword ptr [rbp + 96], 6
                        mov              rax, qword ptr [rip + .Lx304_0]
                        mov              qword ptr [rbp + 104], rax
                        jmp              xchain303_n1_α
.Lx304_0:
                        .quad            10
xchain303_n1_α:
# BOX CALL CHAR(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [zr+96] -> [zr+64]
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 72], rax
                        .section         .rodata
.Lbynamefn224:          .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn224]
                        lea              rsi, [rbp + 64]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                        je               proc_PAT$6_scanfail
                        jmp              xchain303_n2_α
xchain303_n1_β:
                        jmp              proc_PAT$6_scanfail
# IR_MATCH_VALUE (operand[0] pattern value, no manufactured name)
xchain303_n2_α:
                        lea              rdi, [rbp + 48]
                        call             rt_match_value_get_pat_fn@PLT
                        test             rax, rax
                        jz               .Lx306_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx306_4]
                        lea              rdx, [rip + .Lx306_5]
                        jmp              rax
.Lx306_4:
                        jmp              xchain303_n3_α
.Lx306_5:
                        jmp              proc_PAT$6_scanfail
.Lx306_0:
                        lea              rdi, [rbp + 48]
                        call             rt_match_value_open@PLT
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                        js               proc_PAT$6_scanfail
                        mov              r14d, eax
                        lea              rax, [rip + .Lx306_6]
                        sub              rsp, 8
                        push             rax
                        jmp              xchain303_n3_α
.Lx306_6:
                        add              rsp, 16
                        jmp              proc_PAT$6_scanfail
xchain303_n2_β:
                        jmp              qword ptr [rsp]
# IR_MATCH_FENCE1 ival=0 (FENCE0 interior sync box: alpha commits — whack the activation's dynamic zeta to the rbp floor — then gamma; beta abandons to omega)
xchain303_n3_α:
                        mov              rsp, rbp
                        jmp              proc_PAT$6_scanhit
xchain303_n3_β:
                        jmp              proc_PAT$6_scanfail
proc_PAT$6_scanhit:
cmp qword ptr [rbp + 160], 1
jne 7f
mov ecx, dword ptr [rbp + 152]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$6_γ
proc_PAT$6_scanfail:
cmp qword ptr [rbp + 160], 1
jne 8f
mov eax, dword ptr [rbp + 152]
inc eax
cmp eax, r15d
jg 8f
lea rcx, [rip + g_anchor]
cmp qword ptr [rcx], 0
jne 8f
mov dword ptr [rbp + 152], eax
mov r14d, eax
mov rsp, rbp
jmp proc_PAT$6_attempt
8:
jmp proc_PAT$6_ω
proc_PAT$6_res:
add rsp, 8
pop rbp
proc_PAT$6_β:
jmp qword ptr [rbp + 128]
proc_PAT$6_γ:
push rbp
lea rax, [rip + proc_PAT$6_res]
push rax
mov rax, [rbp + 168]
mov rbp, [rbp + 184]
jmp rax
proc_PAT$6_ω:
mov rax, [rbp + 176]
lea rsp, [rbp + 192]
mov rbp, [rbp + 184]
jmp rax
  .globl proc_PAT$7_α
proc_PAT$7_α:
#=======================================================================================================================
    .global proc_PAT$7_α
    .global proc_PAT$7_β
    .global proc_PAT$7_γ
    .global proc_PAT$7_ω
  sub rsp, 368
  mov [rsp + 344], rcx
  mov [rsp + 352], rdx
  mov [rsp + 360], rbp
  mov rbp, rsp
  mov qword ptr [rsp], 0
  mov qword ptr [rsp + 8], 0
  mov qword ptr [rsp + 224], 0
  mov qword ptr [rsp + 232], 0
  mov qword ptr [rsp + 304], 0
  mov qword ptr [rsp + 312], 0
  mov qword ptr [rsp + 320], 0
  mov qword ptr [rsp + 328], rsp
mov qword ptr [rbp + 336], r8
mov dword ptr [rbp + 328], r14d
proc_PAT$7_attempt:
proc_PAT$7_α_body:
lea rax, [rip + xchain309_n0_β]
mov qword ptr [rbp + 304], rax
# IR_MATCH_SEQ_NARY (SPD SEQ-STATIC: zero-counter, sigma/phi statically wired)
xchain309_n0_α:
                        mov              dword ptr [rbp + 16], r14d
                        jmp              xchain309_n1_α
xchain309_n0_as:
                        jmp              proc_PAT$7_γ
xchain309_n0_β:
                        jmp              xchain309_n5_β
xchain309_n0_af:
                        jmp              proc_PAT$7_ω
# IR_LIT_INTEGER
xchain309_n1_α:
                        mov              qword ptr [rbp + 48], 6
                        mov              rax, qword ptr [rip + .Lx312_0]
                        mov              qword ptr [rbp + 56], rax
                        jmp              xchain309_n2_α
xchain309_n1_β:
                        jmp              proc_PAT$7_ω
.Lx312_0:
                        .quad            0
# IR_MATCH_POS
xchain309_n2_α:
                        mov              rax, 0
                        cmp              r14d, eax
                        jne              proc_PAT$7_ω
                        jmp              xchain309_n3_α
xchain309_n2_β:
                        jmp              proc_PAT$7_ω
# IR_MATCH_ARBNO_NARY (ZB-FC-4 rsp linked-frame-chain)
xchain309_n3_α:
                        mov              dword ptr [rbp + 96], r14d
                        mov              dword ptr [rbp + 100], r14d
                        mov              dword ptr [rbp + 104], 0
                        mov              qword ptr [rbp + 120], rsp
                        mov              qword ptr [rbp + 112], 0
                        jmp              xchain309_n4_α
xchain309_n3_β:
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
                        jmp              xchain309_n6_α
xchain309_n3_as:
                        mov              eax, dword ptr [rbp + 112]
                        cmp              r14d, eax
                        je               xchain309_n6_β
                        mov              rbp, qword ptr [rbp + 104]
                        mov              eax, dword ptr [rbp + 104]
                        add              eax, 1
                        mov              dword ptr [rbp + 104], eax
                        mov              dword ptr [rbp + 100], r14d
                        jmp              xchain309_n4_α
xchain309_n3_af:
                        mov              rax, qword ptr [rbp + 120]
                        mov              rdx, qword ptr [rbp + 104]
                        lea              rsp, [rbp + 280]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 104]
                        test             ecx, ecx
                        jz               .Lx315_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 104], ecx
                        mov              qword ptr [rbp + 112], rax
                        lea              rbp, [rax + -104]
                        jmp              xchain309_n6_β
.Lx315_2:
                        mov              r14d, dword ptr [rbp + 96]
                        mov              rsp, qword ptr [rbp + 120]
                        jmp              xchain309_n2_β
# IR_LIT_INTEGER
xchain309_n4_α:
                        mov              qword ptr [rbp + 272], 6
                        mov              rax, qword ptr [rip + .Lx316_0]
                        mov              qword ptr [rbp + 280], rax
                        jmp              xchain309_n5_α
xchain309_n4_β:
                        jmp              xchain309_n3_β
.Lx316_0:
                        .quad            0
# IR_MATCH_RPOS
xchain309_n5_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                        jne              xchain309_n3_β
                        jmp              proc_PAT$7_γ
xchain309_n5_β:
                        jmp              xchain309_n3_β
# IR_MATCH_SEQ_NARY (SPD SEQ-STATIC: zero-counter, sigma/phi statically wired)
xchain309_n6_α:
                        mov              dword ptr [rbp + 144], r14d
                        jmp              xchain309_n8_α
xchain309_n6_as:
                        jmp              xchain309_n3_as
xchain309_n6_β:
                        jmp              xchain309_n11_β
xchain309_n6_af:
                        jmp              xchain309_n3_af
# IR_MATCH_DEFER (ZS-2 jmp-entry)
xchain309_n7_α:
                        lea              rdi, [rip + .S12]
                        xor              esi, esi
                        call             rt_defer_get_pat_fn@PLT
                        test             rax, rax
                        jz               .Lx320_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx320_4]
                        lea              rdx, [rip + .Lx320_5]
                        jmp              rax
.Lx320_4:
                        jmp              xchain309_n11_α
.Lx320_5:
                        jmp              xchain309_n10_β
.Lx320_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S12]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx320_2:
                        test             rax, rax
                        je               .Lx320_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx320_7]
                        lea              rdx, [rip + .Lx320_8]
                        jmp              rax
.Lx320_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx320_2
.Lx320_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx320_2
.Lx320_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                        js               xchain309_n10_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx320_6]
                        sub              rsp, 8
                        push             rax
                        jmp              xchain309_n11_α
.Lx320_6:
                        add              rsp, 16
                        jmp              xchain309_n10_β
xchain309_n7_β:
                        jmp              qword ptr [rsp]
# IR_MATCH_DEFER (ZS-2 jmp-entry)
xchain309_n8_α:
                        lea              rsi, [rip + g_sno_defer_cells+48]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                        jne              .Lx321_11
                        mov              rax, qword ptr [1879052624]
                        mov              rdx, qword ptr [1879052632]
                        cmp              eax, 3
                        jne              .Lx321_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                        jne              .Lx321_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                        jmp              .Lx321_10
.Lx321_9:
                        xor              eax, eax
.Lx321_10:
                        lea              rsi, [rip + g_sno_defer_cells+48]
                        mov              qword ptr [rsi + 0], rax
.Lx321_11:
                        test             rax, rax
                        jz               .Lx321_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx321_4]
                        lea              rdx, [rip + .Lx321_5]
                        jmp              rax
.Lx321_4:
                        jmp              xchain309_n9_α
.Lx321_5:
                        jmp              xchain309_n3_af
.Lx321_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S3]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx321_2:
                        test             rax, rax
                        je               .Lx321_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx321_7]
                        lea              rdx, [rip + .Lx321_8]
                        jmp              rax
.Lx321_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx321_2
.Lx321_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx321_2
.Lx321_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                        js               xchain309_n3_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx321_6]
                        sub              rsp, 8
                        push             rax
                        jmp              xchain309_n9_α
.Lx321_6:
                        add              rsp, 16
                        jmp              xchain309_n3_af
xchain309_n8_β:
                        jmp              qword ptr [rsp]
# IR_MATCH_DEFER (ZS-2 jmp-entry)
xchain309_n9_α:
# s137 SEALED defer: fence-demarked sync point (watermark in defer.pad)
                        mov              qword ptr [rbp + 176], rsp
                        mov              rax, qword ptr [1879052640]
                        mov              rdx, qword ptr [1879052648]
                        cmp              eax, 3
                        jne              .Lx322_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                        jne              .Lx322_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                        jmp              .Lx322_10
.Lx322_9:
                        xor              eax, eax
.Lx322_10:
                        test             rax, rax
                        jz               .Lx322_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx322_4]
                        lea              rdx, [rip + .Lx322_5]
                        jmp              rax
.Lx322_4:
                        mov              rsp, qword ptr [rbp + 176]
                        jmp              xchain309_n10_α
.Lx322_5:
                        mov              rsp, qword ptr [rbp + 176]
                        jmp              xchain309_n8_β
.Lx322_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S13]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx322_2:
                        test             rax, rax
                        je               .Lx322_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx322_7]
                        lea              rdx, [rip + .Lx322_8]
                        jmp              rax
.Lx322_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx322_2
.Lx322_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx322_2
.Lx322_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                        js               xchain309_n8_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx322_6]
                        sub              rsp, 8
                        push             rax
                        jmp              xchain309_n10_α
.Lx322_6:
                        add              rsp, 16
                        jmp              xchain309_n8_β
xchain309_n9_β:
                        mov              rsp, qword ptr [rbp + 176]
                        jmp              xchain309_n8_β
# IR_MATCH_CAPTURE_SAVE push
xchain309_n10_α:
                        lea              rdi, [rbp + 224]
                        mov              esi, r14d
                        call             rt_cap_push@PLT
                        jmp              xchain309_n7_α
xchain309_n10_β:
                        lea              rdi, [rbp + 224]
                        call             rt_cap_pop@PLT
                        jmp              xchain309_n9_β
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
xchain309_n11_α:
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
                        jmp              xchain309_n3_as
xchain309_n11_β:
                        sub              r12, 24
                        jmp              xchain309_n7_β
proc_PAT$7_scanhit:
cmp qword ptr [rbp + 336], 1
jne 7f
mov ecx, dword ptr [rbp + 328]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$7_γ
proc_PAT$7_scanfail:
cmp qword ptr [rbp + 336], 1
jne 8f
mov eax, dword ptr [rbp + 328]
inc eax
cmp eax, r15d
jg 8f
lea rcx, [rip + g_anchor]
cmp qword ptr [rcx], 0
jne 8f
mov dword ptr [rbp + 328], eax
mov r14d, eax
mov rsp, rbp
jmp proc_PAT$7_attempt
8:
jmp proc_PAT$7_ω
proc_PAT$7_res:
add rsp, 8
pop rbp
proc_PAT$7_β:
jmp qword ptr [rbp + 304]
proc_PAT$7_γ:
push rbp
lea rax, [rip + proc_PAT$7_res]
push rax
mov rax, [rbp + 344]
mov rbp, [rbp + 360]
jmp rax
proc_PAT$7_ω:
mov rax, [rbp + 352]
lea rsp, [rbp + 368]
mov rbp, [rbp + 360]
jmp rax
proc_startup:
  sub rsp, 8
  .section .rodata
  .Lstartup_pname0: .string "EMIT"
  .align 8
  .Lstartup_pnames0:
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + .Lstartup_pnames0]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_EMIT_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 432
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname1: .string "PSH"
  .align 8
  .Lstartup_pnames1:
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname1]
  lea rsi, [rip + .Lstartup_pnames1]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname1]
  lea rsi, [rip + proc_PSH_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 336
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname2: .string "DRF"
  .Lstartup_pp2_0: .string "nm"
  .align 8
  .Lstartup_pnames2:
  .quad .Lstartup_pp2_0
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname2]
  lea rsi, [rip + .Lstartup_pnames2]
  mov edx, 1
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname2]
  lea rsi, [rip + proc_DRF_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 480
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname3: .string "ADD"
  .Lstartup_pp3_0: .string "p1"
  .align 8
  .Lstartup_pnames3:
  .quad .Lstartup_pp3_0
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname3]
  lea rsi, [rip + .Lstartup_pnames3]
  mov edx, 1
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname3]
  lea rsi, [rip + proc_ADD_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 832
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname4: .string "SUB"
  .Lstartup_pp4_0: .string "p1"
  .align 8
  .Lstartup_pnames4:
  .quad .Lstartup_pp4_0
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname4]
  lea rsi, [rip + .Lstartup_pnames4]
  mov edx, 1
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname4]
  lea rsi, [rip + proc_SUB_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 832
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname5: .string "MUL"
  .Lstartup_pp5_0: .string "p1"
  .align 8
  .Lstartup_pnames5:
  .quad .Lstartup_pp5_0
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname5]
  lea rsi, [rip + .Lstartup_pnames5]
  mov edx, 1
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname5]
  lea rsi, [rip + proc_MUL_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 832
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname6: .string "DIV"
  .Lstartup_pp6_0: .string "p1"
  .align 8
  .Lstartup_pnames6:
  .quad .Lstartup_pp6_0
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname6]
  lea rsi, [rip + .Lstartup_pnames6]
  mov edx, 1
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname6]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname6]
  lea rsi, [rip + proc_DIV_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname6]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname6]
  mov esi, 832
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname6]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname7: .string "SGN"
  .Lstartup_pp7_0: .string "p1"
  .align 8
  .Lstartup_pnames7:
  .quad .Lstartup_pp7_0
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname7]
  lea rsi, [rip + .Lstartup_pnames7]
  mov edx, 1
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname7]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname7]
  lea rsi, [rip + proc_SGN_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname7]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname7]
  mov esi, 928
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname7]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname8: .string "PAT$0"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname8]
  lea rsi, [rip + proc_PAT$0_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname8]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname8]
  mov esi, 112
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname8]
  mov esi, 1
  call rt_proc_set_zstatic@PLT
  lea rdi, [rip + .Lstartup_pname8]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname9: .string "PAT$1"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname9]
  lea rsi, [rip + proc_PAT$1_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname9]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname9]
  mov esi, 128
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname9]
  mov esi, 1
  call rt_proc_set_zstatic@PLT
  lea rdi, [rip + .Lstartup_pname9]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname10: .string "PAT$2"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname10]
  lea rsi, [rip + proc_PAT$2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname10]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname10]
  mov esi, 144
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname10]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname11: .string "PAT$3"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname11]
  lea rsi, [rip + proc_PAT$3_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname11]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname11]
  mov esi, 240
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname11]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname12: .string "PAT$4"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname12]
  lea rsi, [rip + proc_PAT$4_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname12]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname12]
  mov esi, 368
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname12]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname13: .string "PAT$5"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname13]
  lea rsi, [rip + proc_PAT$5_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname13]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname13]
  mov esi, 368
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname13]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname14: .string "PAT$6"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname14]
  lea rsi, [rip + proc_PAT$6_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname14]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname14]
  mov esi, 160
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname14]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname15: .string "PAT$7"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname15]
  lea rsi, [rip + proc_PAT$7_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname15]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname15]
  mov esi, 336
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname15]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  add rsp, 8
  ret
  .section .rodata
  .Lgvan0: .string "EMIT"
  .Lgvan1: .string "PSH"
  .Lgvan2: .string "DRF"
  .Lgvan3: .string "nm"
  .Lgvan4: .string "ADD"
  .Lgvan5: .string "p1"
  .Lgvan6: .string "SUB"
  .Lgvan7: .string "MUL"
  .Lgvan8: .string "DIV"
  .Lgvan9: .string "SGN"
  .Lgvan10: .string "S"
  .Lgvan11: .string "sp"
  .Lgvan12: .string "dm"
  .Lgvan13: .string "vars"
  .Lgvan14: .string "LCASE"
  .Lgvan15: .string "DIGITS"
  .Lgvan16: .string "V"
  .Lgvan17: .string "I"
  .Lgvan18: .string "A"
  .Lgvan19: .string "F"
  .Lgvan20: .string "T"
  .Lgvan21: .string "X"
  .Lgvan22: .string "eol"
  .Lgvan23: .string "C"
  .Lgvan24: .string "nl"
  .Lgvan25: .string "line"
  .Lgvan26: .string "b1"
  .Lgvan27: .string "b2"
  .Lgvan28: .string "src"
  .Lgvan29: .string "t0"
  .Lgvan30: .string "t1"
  .align 8
__gva_names:
  .quad .Lgvan0
  .quad .Lgvan1
  .quad .Lgvan2
  .quad .Lgvan3
  .quad .Lgvan4
  .quad .Lgvan5
  .quad .Lgvan6
  .quad .Lgvan7
  .quad .Lgvan8
  .quad .Lgvan9
  .quad .Lgvan10
  .quad .Lgvan11
  .quad .Lgvan12
  .quad .Lgvan13
  .quad .Lgvan14
  .quad .Lgvan15
  .quad .Lgvan16
  .quad .Lgvan17
  .quad .Lgvan18
  .quad .Lgvan19
  .quad .Lgvan20
  .quad .Lgvan21
  .quad .Lgvan22
  .quad .Lgvan23
  .quad .Lgvan24
  .quad .Lgvan25
  .quad .Lgvan26
  .quad .Lgvan27
  .quad .Lgvan28
  .quad .Lgvan29
  .quad .Lgvan30
  .section .text
  .intel_syntax noprefix
  .globl main
main:
  sub rsp, 8
  push rdi
  push rsi
  call core_lib_init@PLT
  call proc_startup
  mov edi, 31
  call rt_gva_island@PLT
  mov rsi, rax
  lea rdi, [rip + __gva_names]
  mov edx, 31
  call gva_register@PLT
  xor esi, esi
  call main_α
  xor eax, eax
  add rsp, 24
  ret
main_α:
#=======================================================================================================================
    .global main_α
    .global main_β
    .global main_γ
    .global main_ω
  sub rsp, 65544
  mov rdi, rsp
  mov ecx, 65544
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 8152], rsp
  mov r12, qword ptr [1879048192]
  mov [rsp + 65536], rbp
  mov rbp, rsp
main_α_body:
#         DEFINE('EMIT()')                        :(EMIT_x)
#         DEFINE('PSH()')                         :(PSH_x)
#         DEFINE('DRF(nm)')                       :(DRF_x)
#         DEFINE('ADD()p1')                       :(ADD_x)
#         DEFINE('SUB()p1')                       :(SUB_x)
#         DEFINE('MUL()p1')                       :(MUL_x)
#         DEFINE('DIV()p1')                       :(DIV_x)
#         DEFINE('SGN()p1')                       :(SGN_x)
#         S = ARRAY(65536)
# IR_LIT_INTEGER
xchain327_n0_α:
                        mov              qword ptr [rbp + 4768], 6
                        mov              rax, qword ptr [rip + .Lx328_0]
                        mov              qword ptr [rbp + 4776], rax
                        jmp              xchain327_n1_α
.Lx328_0:
                        .quad            65536
xchain327_n1_α:
# BOX IR_CALL ARRAY(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4768] -> [zr+4736]
                        mov              rax, qword ptr [rbp + 4768]
                        mov              qword ptr [rbp + 4736], rax
                        mov              rax, qword ptr [rbp + 4776]
                        mov              qword ptr [rbp + 4744], rax
                        .section         .rodata
.Lrkfn330:              .string          "ARRAY"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn330]
                        lea              rsi, [rbp + 4736]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4720], rax
                        mov              qword ptr [rbp + 4728], rdx
                        cmp              eax, 99
                        je               xchain327_n3_α
                        jmp              xchain327_n2_α
xchain327_n1_β:
                        jmp              xchain327_n3_α
# IR_ASSIGN gva
xchain327_n2_α:
                        mov              rax, qword ptr [rbp + 4720]
                        mov              rdx, qword ptr [rbp + 4728]
                        mov              qword ptr [1879052448], rax
                        mov              qword ptr [1879052456], rdx
                        mov              qword ptr [rbp + 4704], rax
                        mov              qword ptr [rbp + 4712], rdx
                        jmp              xchain327_n3_α
#         LCASE = &LCASE
# IR_KEYWORD_SNOBOL4_read
xchain327_n3_α:
                        mov              rdi, qword ptr [rip + .Lx332_0]
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rbp + 4816], rax
                        mov              qword ptr [rbp + 4824], rdx
                        jmp              xchain327_n4_α
.Lx332_0:
                        .quad            .Lx332_0_s
.Lx332_0_s:
                        .string          "LCASE"
# IR_ASSIGN gva
xchain327_n4_α:
                        mov              rax, qword ptr [rbp + 4816]
                        mov              rdx, qword ptr [rbp + 4824]
                        mov              qword ptr [1879052512], rax
                        mov              qword ptr [1879052520], rdx
                        mov              qword ptr [rbp + 4800], rax
                        mov              qword ptr [rbp + 4808], rdx
                        jmp              xchain327_n5_α
#         DIGITS = '0123456789'
# IR_LIT_STRING
xchain327_n5_α:
                        mov              qword ptr [rbp + 4848], 1
                        mov              rax, qword ptr [rip + .Lx334_0]
                        mov              qword ptr [rbp + 4856], rax
                        jmp              xchain327_n6_α
.Lx334_0:
                        .quad            .Lx334_0_s
.Lx334_0_s:
                        .string          "0123456789"
# IR_ASSIGN gva
xchain327_n6_α:
                        mov              rax, qword ptr [rbp + 4848]
                        mov              rdx, qword ptr [rbp + 4856]
                        mov              qword ptr [1879052528], rax
                        mov              qword ptr [1879052536], rdx
                        mov              qword ptr [rbp + 4832], rax
                        mov              qword ptr [rbp + 4840], rdx
                        jmp              xchain327_n7_α
#         V = ANY(&LCASE) . *PSH()
# IR_LIT_STRING
xchain327_n7_α:
                        mov              qword ptr [rbp + 4944], 1
                        mov              rax, qword ptr [rip + .Lx336_0]
                        mov              qword ptr [rbp + 4952], rax
                        jmp              xchain327_n8_α
.Lx336_0:
                        .quad            .Lx336_0_s
.Lx336_0_s:
                        .string          "PAT$0"
xchain327_n8_α:
# BOX IR_CALL SNO$MKPAT(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4944] -> [zr+4912]
                        mov              rax, qword ptr [rbp + 4944]
                        mov              qword ptr [rbp + 4912], rax
                        mov              rax, qword ptr [rbp + 4952]
                        mov              qword ptr [rbp + 4920], rax
                        .section         .rodata
.Lrkfn338:              .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn338]
                        lea              rsi, [rbp + 4912]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4896], rax
                        mov              qword ptr [rbp + 4904], rdx
                        cmp              eax, 99
                        je               xchain327_n10_α
                        jmp              xchain327_n9_α
xchain327_n8_β:
                        jmp              xchain327_n10_α
# IR_ASSIGN gva
xchain327_n9_α:
                        mov              rax, qword ptr [rbp + 4896]
                        mov              rdx, qword ptr [rbp + 4904]
                        mov              qword ptr [1879052544], rax
                        mov              qword ptr [1879052552], rdx
                        mov              qword ptr [rbp + 4880], rax
                        mov              qword ptr [rbp + 4888], rdx
                        jmp              xchain327_n10_α
#         I = SPAN('0123456789') . *PSH()
# IR_LIT_STRING
xchain327_n10_α:
                        mov              qword ptr [rbp + 5040], 1
                        mov              rax, qword ptr [rip + .Lx340_0]
                        mov              qword ptr [rbp + 5048], rax
                        jmp              xchain327_n11_α
.Lx340_0:
                        .quad            .Lx340_0_s
.Lx340_0_s:
                        .string          "PAT$1"
xchain327_n11_α:
# BOX IR_CALL SNO$MKPAT(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5040] -> [zr+5008]
                        mov              rax, qword ptr [rbp + 5040]
                        mov              qword ptr [rbp + 5008], rax
                        mov              rax, qword ptr [rbp + 5048]
                        mov              qword ptr [rbp + 5016], rax
                        .section         .rodata
.Lrkfn342:              .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn342]
                        lea              rsi, [rbp + 5008]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4992], rax
                        mov              qword ptr [rbp + 5000], rdx
                        cmp              eax, 99
                        je               xchain327_n13_α
                        jmp              xchain327_n12_α
xchain327_n11_β:
                        jmp              xchain327_n13_α
# IR_ASSIGN gva
xchain327_n12_α:
                        mov              rax, qword ptr [rbp + 4992]
                        mov              rdx, qword ptr [rbp + 5000]
                        mov              qword ptr [1879052560], rax
                        mov              qword ptr [1879052568], rdx
                        mov              qword ptr [rbp + 4976], rax
                        mov              qword ptr [rbp + 4984], rdx
                        jmp              xchain327_n13_α
#         A = FENCE(V | I | '(' *X ')')
# IR_LIT_STRING
xchain327_n13_α:
                        mov              qword ptr [rbp + 5136], 1
                        mov              rax, qword ptr [rip + .Lx344_0]
                        mov              qword ptr [rbp + 5144], rax
                        jmp              xchain327_n14_α
.Lx344_0:
                        .quad            .Lx344_0_s
.Lx344_0_s:
                        .string          "PAT$2"
xchain327_n14_α:
# BOX IR_CALL SNO$MKPAT(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5136] -> [zr+5104]
                        mov              rax, qword ptr [rbp + 5136]
                        mov              qword ptr [rbp + 5104], rax
                        mov              rax, qword ptr [rbp + 5144]
                        mov              qword ptr [rbp + 5112], rax
                        .section         .rodata
.Lrkfn346:              .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn346]
                        lea              rsi, [rbp + 5104]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5088], rax
                        mov              qword ptr [rbp + 5096], rdx
                        cmp              eax, 99
                        je               xchain327_n16_α
                        jmp              xchain327_n15_α
xchain327_n14_β:
                        jmp              xchain327_n16_α
# IR_ASSIGN gva
xchain327_n15_α:
                        mov              rax, qword ptr [rbp + 5088]
                        mov              rdx, qword ptr [rbp + 5096]
                        mov              qword ptr [1879052576], rax
                        mov              qword ptr [1879052584], rdx
                        mov              qword ptr [rbp + 5072], rax
                        mov              qword ptr [rbp + 5080], rdx
                        jmp              xchain327_n16_α
#         F = FENCE(A | ANY('+-') . *PSH() *F . *SGN())
# IR_LIT_STRING
xchain327_n16_α:
                        mov              qword ptr [rbp + 5232], 1
                        mov              rax, qword ptr [rip + .Lx348_0]
                        mov              qword ptr [rbp + 5240], rax
                        jmp              xchain327_n17_α
.Lx348_0:
                        .quad            .Lx348_0_s
.Lx348_0_s:
                        .string          "PAT$3"
xchain327_n17_α:
# BOX IR_CALL SNO$MKPAT(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5232] -> [zr+5200]
                        mov              rax, qword ptr [rbp + 5232]
                        mov              qword ptr [rbp + 5200], rax
                        mov              rax, qword ptr [rbp + 5240]
                        mov              qword ptr [rbp + 5208], rax
                        .section         .rodata
.Lrkfn350:              .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn350]
                        lea              rsi, [rbp + 5200]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5184], rax
                        mov              qword ptr [rbp + 5192], rdx
                        cmp              eax, 99
                        je               xchain327_n19_α
                        jmp              xchain327_n18_α
xchain327_n17_β:
                        jmp              xchain327_n19_α
# IR_ASSIGN gva
xchain327_n18_α:
                        mov              rax, qword ptr [rbp + 5184]
                        mov              rdx, qword ptr [rbp + 5192]
                        mov              qword ptr [1879052592], rax
                        mov              qword ptr [1879052600], rdx
                        mov              qword ptr [rbp + 5168], rax
                        mov              qword ptr [rbp + 5176], rdx
                        jmp              xchain327_n19_α
#         T = F ARBNO('*' F . *MUL() | '/' F . *DIV())
# IR_LIT_STRING
xchain327_n19_α:
                        mov              qword ptr [rbp + 5328], 1
                        mov              rax, qword ptr [rip + .Lx352_0]
                        mov              qword ptr [rbp + 5336], rax
                        jmp              xchain327_n20_α
.Lx352_0:
                        .quad            .Lx352_0_s
.Lx352_0_s:
                        .string          "PAT$4"
xchain327_n20_α:
# BOX IR_CALL SNO$MKPAT(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5328] -> [zr+5296]
                        mov              rax, qword ptr [rbp + 5328]
                        mov              qword ptr [rbp + 5296], rax
                        mov              rax, qword ptr [rbp + 5336]
                        mov              qword ptr [rbp + 5304], rax
                        .section         .rodata
.Lrkfn354:              .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn354]
                        lea              rsi, [rbp + 5296]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5280], rax
                        mov              qword ptr [rbp + 5288], rdx
                        cmp              eax, 99
                        je               xchain327_n22_α
                        jmp              xchain327_n21_α
xchain327_n20_β:
                        jmp              xchain327_n22_α
# IR_ASSIGN gva
xchain327_n21_α:
                        mov              rax, qword ptr [rbp + 5280]
                        mov              rdx, qword ptr [rbp + 5288]
                        mov              qword ptr [1879052608], rax
                        mov              qword ptr [1879052616], rdx
                        mov              qword ptr [rbp + 5264], rax
                        mov              qword ptr [rbp + 5272], rdx
                        jmp              xchain327_n22_α
#         X = T ARBNO('+' T . *ADD() | '-' T . *SUB())
# IR_LIT_STRING
xchain327_n22_α:
                        mov              qword ptr [rbp + 5424], 1
                        mov              rax, qword ptr [rip + .Lx356_0]
                        mov              qword ptr [rbp + 5432], rax
                        jmp              xchain327_n23_α
.Lx356_0:
                        .quad            .Lx356_0_s
.Lx356_0_s:
                        .string          "PAT$5"
xchain327_n23_α:
# BOX IR_CALL SNO$MKPAT(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5424] -> [zr+5392]
                        mov              rax, qword ptr [rbp + 5424]
                        mov              qword ptr [rbp + 5392], rax
                        mov              rax, qword ptr [rbp + 5432]
                        mov              qword ptr [rbp + 5400], rax
                        .section         .rodata
.Lrkfn358:              .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn358]
                        lea              rsi, [rbp + 5392]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5376], rax
                        mov              qword ptr [rbp + 5384], rdx
                        cmp              eax, 99
                        je               xchain327_n25_α
                        jmp              xchain327_n24_α
xchain327_n23_β:
                        jmp              xchain327_n25_α
# IR_ASSIGN gva
xchain327_n24_α:
                        mov              rax, qword ptr [rbp + 5376]
                        mov              rdx, qword ptr [rbp + 5384]
                        mov              qword ptr [1879052624], rax
                        mov              qword ptr [1879052632], rdx
                        mov              qword ptr [rbp + 5360], rax
                        mov              qword ptr [rbp + 5368], rdx
                        jmp              xchain327_n25_α
#         eol = CHAR(10) FENCE
# IR_LIT_STRING
xchain327_n25_α:
                        mov              qword ptr [rbp + 5520], 1
                        mov              rax, qword ptr [rip + .Lx360_0]
                        mov              qword ptr [rbp + 5528], rax
                        jmp              xchain327_n26_α
.Lx360_0:
                        .quad            .Lx360_0_s
.Lx360_0_s:
                        .string          "PAT$6"
xchain327_n26_α:
# BOX IR_CALL SNO$MKPAT(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5520] -> [zr+5488]
                        mov              rax, qword ptr [rbp + 5520]
                        mov              qword ptr [rbp + 5488], rax
                        mov              rax, qword ptr [rbp + 5528]
                        mov              qword ptr [rbp + 5496], rax
                        .section         .rodata
.Lrkfn362:              .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn362]
                        lea              rsi, [rbp + 5488]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5472], rax
                        mov              qword ptr [rbp + 5480], rdx
                        cmp              eax, 99
                        je               xchain327_n28_α
                        jmp              xchain327_n27_α
xchain327_n26_β:
                        jmp              xchain327_n28_α
# IR_ASSIGN gva
xchain327_n27_α:
                        mov              rax, qword ptr [rbp + 5472]
                        mov              rdx, qword ptr [rbp + 5480]
                        mov              qword ptr [1879052640], rax
                        mov              qword ptr [1879052648], rdx
                        mov              qword ptr [rbp + 5456], rax
                        mov              qword ptr [rbp + 5464], rdx
                        jmp              xchain327_n28_α
#         C = POS(0) ARBNO(X eol (epsilon . *EMIT())) RPOS(0)
# IR_LIT_STRING
xchain327_n28_α:
                        mov              qword ptr [rbp + 5616], 1
                        mov              rax, qword ptr [rip + .Lx364_0]
                        mov              qword ptr [rbp + 5624], rax
                        jmp              xchain327_n29_α
.Lx364_0:
                        .quad            .Lx364_0_s
.Lx364_0_s:
                        .string          "PAT$7"
xchain327_n29_α:
# BOX IR_CALL SNO$MKPAT(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5616] -> [zr+5584]
                        mov              rax, qword ptr [rbp + 5616]
                        mov              qword ptr [rbp + 5584], rax
                        mov              rax, qword ptr [rbp + 5624]
                        mov              qword ptr [rbp + 5592], rax
                        .section         .rodata
.Lrkfn366:              .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn366]
                        lea              rsi, [rbp + 5584]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5568], rax
                        mov              qword ptr [rbp + 5576], rdx
                        cmp              eax, 99
                        je               xchain327_n31_α
                        jmp              xchain327_n30_α
xchain327_n29_β:
                        jmp              xchain327_n31_α
# IR_ASSIGN gva
xchain327_n30_α:
                        mov              rax, qword ptr [rbp + 5568]
                        mov              rdx, qword ptr [rbp + 5576]
                        mov              qword ptr [1879052656], rax
                        mov              qword ptr [1879052664], rdx
                        mov              qword ptr [rbp + 5552], rax
                        mov              qword ptr [rbp + 5560], rdx
                        jmp              xchain327_n31_α
#         &TRIM = 1
# IR_LIT_STRING
xchain327_n31_α:
                        mov              qword ptr [rbp + 5712], 1
                        mov              rax, qword ptr [rip + .Lx368_0]
                        mov              qword ptr [rbp + 5720], rax
                        jmp              xchain327_n32_α
.Lx368_0:
                        .quad            .Lx368_0_s
.Lx368_0_s:
                        .string          "TRIM"
# IR_LIT_INTEGER
xchain327_n32_α:
                        mov              qword ptr [rbp + 5744], 6
                        mov              rax, qword ptr [rip + .Lx369_0]
                        mov              qword ptr [rbp + 5752], rax
                        jmp              xchain327_n33_α
.Lx369_0:
                        .quad            1
xchain327_n33_α:
# BOX IR_CALL SNO$KWSET(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5712] -> [zr+5664]
                        mov              rax, qword ptr [rbp + 5712]
                        mov              qword ptr [rbp + 5664], rax
                        mov              rax, qword ptr [rbp + 5720]
                        mov              qword ptr [rbp + 5672], rax
# marshal arg1 = producer-box slot [zr+5744] -> [zr+5680]
                        mov              rax, qword ptr [rbp + 5744]
                        mov              qword ptr [rbp + 5680], rax
                        mov              rax, qword ptr [rbp + 5752]
                        mov              qword ptr [rbp + 5688], rax
                        .section         .rodata
.Lrkfn371:              .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn371]
                        lea              rsi, [rbp + 5664]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5648], rax
                        mov              qword ptr [rbp + 5656], rdx
                        cmp              eax, 99
                        je               xchain327_n34_α
                        jmp              xchain327_n34_α
xchain327_n33_β:
                        jmp              xchain327_n34_α
#         nl = CHAR(10)
# IR_LIT_INTEGER
xchain327_n34_α:
                        mov              qword ptr [rbp + 5840], 6
                        mov              rax, qword ptr [rip + .Lx372_0]
                        mov              qword ptr [rbp + 5848], rax
                        jmp              xchain327_n35_α
.Lx372_0:
                        .quad            10
xchain327_n35_α:
# BOX CALL CHAR(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [zr+5840] -> [zr+5808]
                        mov              rax, qword ptr [rbp + 5840]
                        mov              qword ptr [rbp + 5808], rax
                        mov              rax, qword ptr [rbp + 5848]
                        mov              qword ptr [rbp + 5816], rax
                        .section         .rodata
.Lbynamefn274:          .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn274]
                        lea              rsi, [rbp + 5808]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5792], rax
                        mov              qword ptr [rbp + 5800], rdx
                        cmp              eax, 99
                        je               xchain327_n37_α
                        jmp              xchain327_n36_α
xchain327_n35_β:
                        jmp              xchain327_n37_α
# IR_ASSIGN gva
xchain327_n36_α:
                        mov              rax, qword ptr [rbp + 5792]
                        mov              rdx, qword ptr [rbp + 5800]
                        mov              qword ptr [1879052672], rax
                        mov              qword ptr [1879052680], rdx
                        mov              qword ptr [rbp + 5776], rax
                        mov              qword ptr [rbp + 5784], rdx
                        jmp              xchain327_n37_α
#         vars = TABLE()
xchain327_n37_α:
# BOX IR_CALL TABLE(...) -> rt_call_arr [operand-marshal, FAIL->ω]
                        .section         .rodata
.Lrkfn376:              .string          "TABLE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn376]
                        lea              rsi, [rbp + 5904]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5888], rax
                        mov              qword ptr [rbp + 5896], rdx
                        cmp              eax, 99
                        je               xchain327_n39_α
                        jmp              xchain327_n38_α
xchain327_n37_β:
                        jmp              xchain327_n39_α
# IR_ASSIGN gva
xchain327_n38_α:
                        mov              rax, qword ptr [rbp + 5888]
                        mov              rdx, qword ptr [rbp + 5896]
                        mov              qword ptr [1879052496], rax
                        mov              qword ptr [1879052504], rdx
                        mov              qword ptr [rbp + 5872], rax
                        mov              qword ptr [rbp + 5880], rdx
                        jmp              xchain327_n39_α
#         vars['x'] = 1
# IR_VAR
xchain327_n39_α:
                        mov              rax, qword ptr [1879052496]
                        mov              rdx, qword ptr [1879052504]
                        mov              qword ptr [rbp + 5920], rax
                        mov              qword ptr [rbp + 5928], rdx
                        jmp              xchain327_n40_α
# IR_LIT_STRING
xchain327_n40_α:
                        mov              qword ptr [rbp + 5952], 1
                        mov              rax, qword ptr [rip + .Lx379_0]
                        mov              qword ptr [rbp + 5960], rax
                        jmp              xchain327_n42_α
.Lx379_0:
                        .quad            .Lx379_0_s
.Lx379_0_s:
                        .string          "x"
#         vars['y'] = 2
# IR_VAR
xchain327_n41_α:
                        mov              rax, qword ptr [1879052496]
                        mov              rdx, qword ptr [1879052504]
                        mov              qword ptr [rbp + 6064], rax
                        mov              qword ptr [rbp + 6072], rdx
                        jmp              xchain327_n43_α
# IR_SUBSCRIPT x[i] variable
xchain327_n42_α:
                        mov              rdi, qword ptr [rbp + 5920]
                        mov              rsi, qword ptr [rbp + 5928]
                        mov              rdx, qword ptr [rbp + 5952]
                        mov              rcx, qword ptr [rbp + 5960]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                        je               xchain327_n41_α
                        mov              qword ptr [rbp + 5984], rax
                        mov              qword ptr [rbp + 5992], rdx
                        jmp              xchain327_n45_α
# IR_LIT_STRING
xchain327_n43_α:
                        mov              qword ptr [rbp + 6096], 1
                        mov              rax, qword ptr [rip + .Lx382_0]
                        mov              qword ptr [rbp + 6104], rax
                        jmp              xchain327_n46_α
.Lx382_0:
                        .quad            .Lx382_0_s
.Lx382_0_s:
                        .string          "y"
#         vars['z'] = 3
# IR_VAR
xchain327_n44_α:
                        mov              rax, qword ptr [1879052496]
                        mov              rdx, qword ptr [1879052504]
                        mov              qword ptr [rbp + 6208], rax
                        mov              qword ptr [rbp + 6216], rdx
                        jmp              xchain327_n47_α
# IR_LIT_INTEGER
xchain327_n45_α:
                        mov              qword ptr [rbp + 6016], 6
                        mov              rax, qword ptr [rip + .Lx384_0]
                        mov              qword ptr [rbp + 6024], rax
                        jmp              xchain327_n49_α
.Lx384_0:
                        .quad            1
# IR_SUBSCRIPT x[i] variable
xchain327_n46_α:
                        mov              rdi, qword ptr [rbp + 6064]
                        mov              rsi, qword ptr [rbp + 6072]
                        mov              rdx, qword ptr [rbp + 6096]
                        mov              rcx, qword ptr [rbp + 6104]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                        je               xchain327_n44_α
                        mov              qword ptr [rbp + 6128], rax
                        mov              qword ptr [rbp + 6136], rdx
                        jmp              xchain327_n50_α
# IR_LIT_STRING
xchain327_n47_α:
                        mov              qword ptr [rbp + 6240], 1
                        mov              rax, qword ptr [rip + .Lx386_0]
                        mov              qword ptr [rbp + 6248], rax
                        jmp              xchain327_n51_α
.Lx386_0:
                        .quad            .Lx386_0_s
.Lx386_0_s:
                        .string          "z"
# slurp   line = INPUT                            :F(slurp_f)
# IR_VAR
xchain327_n48_α:
                        mov              rdi, qword ptr [rip + .Lx387_0]
                        call             NV_GET_fn@PLT
                        cmp              eax, 99
                        je               xchain327_n53_α
                        mov              qword ptr [rbp + 6368], rax
                        mov              qword ptr [rbp + 6376], rdx
                        jmp              xchain327_n52_α
.Lx387_0:
                        .quad            .Lx387_0_s
.Lx387_0_s:
                        .string          "INPUT"
# IR_ASSIGN_VAR
xchain327_n49_α:
                        mov              rdi, qword ptr [rbp + 5984]
                        mov              rsi, qword ptr [rbp + 5992]
                        mov              rdx, qword ptr [rbp + 6016]
                        mov              rcx, qword ptr [rbp + 6024]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                        je               xchain327_n41_α
                        mov              qword ptr [rbp + 6048], rax
                        mov              qword ptr [rbp + 6056], rdx
                        jmp              xchain327_n41_α
# IR_LIT_INTEGER
xchain327_n50_α:
                        mov              qword ptr [rbp + 6160], 6
                        mov              rax, qword ptr [rip + .Lx389_0]
                        mov              qword ptr [rbp + 6168], rax
                        jmp              xchain327_n54_α
.Lx389_0:
                        .quad            2
# IR_SUBSCRIPT x[i] variable
xchain327_n51_α:
                        mov              rdi, qword ptr [rbp + 6208]
                        mov              rsi, qword ptr [rbp + 6216]
                        mov              rdx, qword ptr [rbp + 6240]
                        mov              rcx, qword ptr [rbp + 6248]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                        je               xchain327_n48_α
                        mov              qword ptr [rbp + 6272], rax
                        mov              qword ptr [rbp + 6280], rdx
                        jmp              xchain327_n55_α
# IR_ASSIGN gva
xchain327_n52_α:
                        mov              rax, qword ptr [rbp + 6368]
                        mov              rdx, qword ptr [rbp + 6376]
                        mov              qword ptr [1879052688], rax
                        mov              qword ptr [1879052696], rdx
                        mov              qword ptr [rbp + 6352], rax
                        mov              qword ptr [rbp + 6360], rdx
                        jmp              xchain327_n56_α
# slurp_f src = src b2 b1
# IR_VAR
xchain327_n53_α:
                        mov              rax, qword ptr [1879052736]
                        mov              rdx, qword ptr [1879052744]
                        mov              qword ptr [rbp + 7392], rax
                        mov              qword ptr [rbp + 7400], rdx
                        jmp              xchain327_n57_α
# IR_ASSIGN_VAR
xchain327_n54_α:
                        mov              rdi, qword ptr [rbp + 6128]
                        mov              rsi, qword ptr [rbp + 6136]
                        mov              rdx, qword ptr [rbp + 6160]
                        mov              rcx, qword ptr [rbp + 6168]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                        je               xchain327_n44_α
                        mov              qword ptr [rbp + 6192], rax
                        mov              qword ptr [rbp + 6200], rdx
                        jmp              xchain327_n44_α
# IR_LIT_INTEGER
xchain327_n55_α:
                        mov              qword ptr [rbp + 6304], 6
                        mov              rax, qword ptr [rip + .Lx394_0]
                        mov              qword ptr [rbp + 6312], rax
                        jmp              xchain327_n59_α
.Lx394_0:
                        .quad            3
#         b1 = b1 line nl
# IR_VAR
xchain327_n56_α:
                        mov              rax, qword ptr [1879052704]
                        mov              rdx, qword ptr [1879052712]
                        mov              qword ptr [rbp + 6480], rax
                        mov              qword ptr [rbp + 6488], rdx
                        jmp              xchain327_n60_α
# IR_VAR
xchain327_n57_α:
                        mov              rax, qword ptr [1879052720]
                        mov              rdx, qword ptr [1879052728]
                        mov              qword ptr [rbp + 7424], rax
                        mov              qword ptr [rbp + 7432], rdx
                        jmp              xchain327_n62_α
#         t0 = TIME()
xchain327_n58_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
                        .section         .rodata
.Lrkfn398:              .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn398]
                        lea              rsi, [rbp + 7520]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 7504], rax
                        mov              qword ptr [rbp + 7512], rdx
                        cmp              eax, 99
                        je               xchain327_n64_α
                        jmp              xchain327_n63_α
xchain327_n58_β:
                        jmp              xchain327_n64_α
# IR_ASSIGN_VAR
xchain327_n59_α:
                        mov              rdi, qword ptr [rbp + 6272]
                        mov              rsi, qword ptr [rbp + 6280]
                        mov              rdx, qword ptr [rbp + 6304]
                        mov              rcx, qword ptr [rbp + 6312]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                        je               xchain327_n48_α
                        mov              qword ptr [rbp + 6336], rax
                        mov              qword ptr [rbp + 6344], rdx
                        jmp              xchain327_n48_α
# IR_VAR
xchain327_n60_α:
                        mov              rax, qword ptr [1879052688]
                        mov              rdx, qword ptr [1879052696]
                        mov              qword ptr [rbp + 6512], rax
                        mov              qword ptr [rbp + 6520], rdx
                        jmp              xchain327_n65_α
#         GT(SIZE(b1), 8192)                      :F(slurp)
# IR_VAR
xchain327_n61_α:
                        mov              rax, qword ptr [1879052704]
                        mov              rdx, qword ptr [1879052712]
                        mov              qword ptr [rbp + 6752], rax
                        mov              qword ptr [rbp + 6760], rdx
                        jmp              xchain327_n66_α
xchain327_n62_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 7392]
                        mov              rsi, qword ptr [rbp + 7400]
                        mov              rdx, qword ptr [rbp + 7424]
                        mov              rcx, qword ptr [rbp + 7432]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 7360], rax
                        mov              qword ptr [rbp + 7368], rdx
                        jmp              xchain327_n67_α
# IR_ASSIGN gva
xchain327_n63_α:
                        mov              rax, qword ptr [rbp + 7504]
                        mov              rdx, qword ptr [rbp + 7512]
                        mov              qword ptr [1879052752], rax
                        mov              qword ptr [1879052760], rdx
                        mov              qword ptr [rbp + 7488], rax
                        mov              qword ptr [rbp + 7496], rdx
                        jmp              xchain327_n64_α
#         src C                                   :F(bad)
# IR_VAR
xchain327_n64_α:
                        mov              rax, qword ptr [1879052736]
                        mov              rdx, qword ptr [1879052744]
                        mov              qword ptr [rbp + 7616], rax
                        mov              qword ptr [rbp + 7624], rdx
                        jmp              xchain327_n68_α
xchain327_n65_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 6480]
                        mov              rsi, qword ptr [rbp + 6488]
                        mov              rdx, qword ptr [rbp + 6512]
                        mov              rcx, qword ptr [rbp + 6520]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 6448], rax
                        mov              qword ptr [rbp + 6456], rdx
                        jmp              xchain327_n70_α
xchain327_n66_α:
# BOX IR_CALL SIZE(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6752] -> [zr+6720]
                        mov              rax, qword ptr [rbp + 6752]
                        mov              qword ptr [rbp + 6720], rax
                        mov              rax, qword ptr [rbp + 6760]
                        mov              qword ptr [rbp + 6728], rax
                        .section         .rodata
.Lrkfn407:              .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn407]
                        lea              rsi, [rbp + 6720]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 6704], rax
                        mov              qword ptr [rbp + 6712], rdx
                        cmp              eax, 99
                        je               xchain327_n48_α
                        jmp              xchain327_n71_α
xchain327_n66_β:
                        jmp              xchain327_n48_α
# IR_VAR
xchain327_n67_α:
                        mov              rax, qword ptr [1879052704]
                        mov              rdx, qword ptr [1879052712]
                        mov              qword ptr [rbp + 7456], rax
                        mov              qword ptr [rbp + 7464], rdx
                        jmp              xchain327_n72_α
# IR_MATCH_HEAD
xchain327_n68_α:
                        mov              qword ptr [rbp + 7592], rbp
                        mov              rdi, qword ptr [rbp + 7616]
                        mov              rsi, qword ptr [rbp + 7624]
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [rbp + 7584], r12
                        mov              qword ptr [rbp + 7568], rsp
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 7560], rax
                        mov              dword ptr [rbp + 7552], 0
.Lx410_0:
                        mov              r14d, dword ptr [rbp + 7552]
                        jmp              xchain327_n73_α
xchain327_n68_β:
                        add              dword ptr [rbp + 7552], 1
                        mov              eax, dword ptr [rbp + 7552]
                        cmp              eax, r15d
                        jg               .Lx410_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                        jne              .Lx410_1
                        jmp              .Lx410_0
.Lx410_1:
                        mov              rax, qword ptr [rbp + 7560]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 7568]
                        mov              r12, qword ptr [rbp + 7584]
                        mov              rbp, qword ptr [rbp + 7592]
                        jmp              xchain327_n69_α
# bad     t1 = TIME()
xchain327_n69_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
                        .section         .rodata
.Lrkfn412:              .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn412]
                        lea              rsi, [rbp + 7904]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 7888], rax
                        mov              qword ptr [rbp + 7896], rdx
                        cmp              eax, 99
                        je               xchain327_n75_α
                        jmp              xchain327_n74_α
xchain327_n69_β:
                        jmp              xchain327_n75_α
# IR_VAR
xchain327_n70_α:
                        mov              rax, qword ptr [1879052672]
                        mov              rdx, qword ptr [1879052680]
                        mov              qword ptr [rbp + 6544], rax
                        mov              qword ptr [rbp + 6552], rdx
                        jmp              xchain327_n76_α
# IR_LIT_INTEGER
xchain327_n71_α:
                        mov              qword ptr [rbp + 6672], 6
                        mov              rax, qword ptr [rip + .Lx414_0]
                        mov              qword ptr [rbp + 6680], rax
                        jmp              xchain327_n77_α
.Lx414_0:
                        .quad            8192
xchain327_n72_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 7360]
                        mov              rsi, qword ptr [rbp + 7368]
                        mov              rdx, qword ptr [rbp + 7456]
                        mov              rcx, qword ptr [rbp + 7464]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 7328], rax
                        mov              qword ptr [rbp + 7336], rdx
                        jmp              xchain327_n78_α
# IR_MATCH_DEFER (ZS-2 jmp-entry)
xchain327_n73_α:
                        lea              rsi, [rip + g_sno_defer_cells+56]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                        jne              .Lx416_11
                        mov              rax, qword ptr [1879052656]
                        mov              rdx, qword ptr [1879052664]
                        cmp              eax, 3
                        jne              .Lx416_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                        jne              .Lx416_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                        jmp              .Lx416_10
.Lx416_9:
                        xor              eax, eax
.Lx416_10:
                        lea              rsi, [rip + g_sno_defer_cells+56]
                        mov              qword ptr [rsi + 0], rax
.Lx416_11:
                        test             rax, rax
                        jz               .Lx416_0
                        mov              r8d, 1
                        lea              rcx, [rip + .Lx416_4]
                        lea              rdx, [rip + .Lx416_5]
                        jmp              rax
.Lx416_4:
                        lea              rcx, [rip + g_scan_hit_start]
                        mov              rax, qword ptr [rcx]
                        mov              dword ptr [rbp + 7552], eax
                        jmp              xchain327_n79_α
.Lx416_5:
                        jmp              xchain327_n68_β
.Lx416_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S15]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx416_2:
                        test             rax, rax
                        je               .Lx416_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx416_7]
                        lea              rdx, [rip + .Lx416_8]
                        jmp              rax
.Lx416_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx416_2
.Lx416_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx416_2
.Lx416_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                        js               xchain327_n68_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx416_6]
                        sub              rsp, 8
                        push             rax
                        jmp              xchain327_n79_α
.Lx416_6:
                        add              rsp, 16
                        jmp              xchain327_n68_β
xchain327_n73_β:
                        jmp              qword ptr [rsp]
# IR_ASSIGN gva
xchain327_n74_α:
                        mov              rax, qword ptr [rbp + 7888]
                        mov              rdx, qword ptr [rbp + 7896]
                        mov              qword ptr [1879052768], rax
                        mov              qword ptr [1879052776], rdx
                        mov              qword ptr [rbp + 7872], rax
                        mov              qword ptr [rbp + 7880], rdx
                        jmp              xchain327_n75_α
#         OUTPUT = 'Boo!'
# IR_LIT_STRING
xchain327_n75_α:
                        mov              qword ptr [rbp + 7936], 1
                        mov              rax, qword ptr [rip + .Lx418_0]
                        mov              qword ptr [rbp + 7944], rax
                        jmp              xchain327_n80_α
.Lx418_0:
                        .quad            .Lx418_0_s
.Lx418_0_s:
                        .string          "Boo!"
xchain327_n76_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 6448]
                        mov              rsi, qword ptr [rbp + 6456]
                        mov              rdx, qword ptr [rbp + 6544]
                        mov              rcx, qword ptr [rbp + 6552]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 6416], rax
                        mov              qword ptr [rbp + 6424], rdx
                        jmp              xchain327_n81_α
# IR_COERCE_NUMERIC
xchain327_n77_α:
                        mov              eax, dword ptr [rbp + 6704]
                        cmp              eax, 7
                        je               .Lx421_1
                        cmp              eax, 6
                        jne              .Lx421_0
                        mov              eax, dword ptr [rbp + 6672]
                        cmp              eax, 6
                        jne              .Lx421_0
.Lx421_1:
                        mov              rax, qword ptr [rbp + 6704]
                        mov              qword ptr [rbp + 6640], rax
                        mov              rax, qword ptr [rbp + 6712]
                        mov              qword ptr [rbp + 6648], rax
                        jmp              xchain327_n82_α
.Lx421_0:
                        lea              rdi, [rbp + 6704]
                        lea              rsi, [rbp + 6672]
                        lea              rdx, [rbp + 6640]
                        mov              rcx, 111
                        call             rt_coerce_num2_d@PLT
                        jmp              xchain327_n82_α
# IR_ASSIGN gva
xchain327_n78_α:
                        mov              rax, qword ptr [rbp + 7328]
                        mov              rdx, qword ptr [rbp + 7336]
                        mov              qword ptr [1879052736], rax
                        mov              qword ptr [1879052744], rdx
                        mov              qword ptr [rbp + 7312], rax
                        mov              qword ptr [rbp + 7320], rdx
                        jmp              xchain327_n58_α
# IR_MATCH_RELEASE
xchain327_n79_α:
                        mov              rax, qword ptr [rbp + 7560]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 7568]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rsp + 7616]
                        mov              rsi, r12
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx424_1:
                        test             rax, rax
                        je               .Lx424_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx424_3]
                        lea              rdx, [rip + .Lx424_4]
                        jmp              rax
.Lx424_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                        jmp              .Lx424_1
.Lx424_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                        jmp              .Lx424_1
.Lx424_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + 7584]
                        mov              rbp, qword ptr [rbp + 7592]
                        jmp              xchain327_n83_α
# IR_ASSIGN global
xchain327_n80_α:
                        mov              rsi, qword ptr [rbp + 7936]
                        mov              rdx, qword ptr [rbp + 7944]
                        mov              rdi, qword ptr [rip + .Lx425_0]
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rbp + 7920], rax
                        mov              qword ptr [rbp + 7928], rdx
                        jmp              xchain327_n84_α
.Lx425_0:
                        .quad            .Lx425_0_s
.Lx425_0_s:
                        .string          "OUTPUT"
# IR_ASSIGN gva
xchain327_n81_α:
                        mov              rax, qword ptr [rbp + 6416]
                        mov              rdx, qword ptr [rbp + 6424]
                        mov              qword ptr [1879052704], rax
                        mov              qword ptr [1879052712], rdx
                        mov              qword ptr [rbp + 6400], rax
                        mov              qword ptr [rbp + 6408], rdx
                        jmp              xchain327_n61_α
# IR_COERCE_NUMERIC
xchain327_n82_α:
                        mov              eax, dword ptr [rbp + 6672]
                        cmp              eax, 7
                        je               .Lx428_1
                        cmp              eax, 6
                        jne              .Lx428_0
                        mov              eax, dword ptr [rbp + 6704]
                        cmp              eax, 6
                        jne              .Lx428_0
.Lx428_1:
                        mov              rax, qword ptr [rbp + 6672]
                        mov              qword ptr [rbp + 6608], rax
                        mov              rax, qword ptr [rbp + 6680]
                        mov              qword ptr [rbp + 6616], rax
                        jmp              xchain327_n85_α
.Lx428_0:
                        lea              rdi, [rbp + 6672]
                        lea              rsi, [rbp + 6704]
                        lea              rdx, [rbp + 6608]
                        mov              rcx, 112
                        call             rt_coerce_num2_d@PLT
                        jmp              xchain327_n85_α
#         t1 = TIME()
xchain327_n83_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
                        .section         .rodata
.Lrkfn430:              .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn430]
                        lea              rsi, [rbp + 7680]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 7664], rax
                        mov              qword ptr [rbp + 7672], rdx
                        cmp              eax, 99
                        je               xchain327_n87_α
                        jmp              xchain327_n86_α
xchain327_n83_β:
                        jmp              xchain327_n87_α
#         TERMINAL = 'match_ms=' (t1 - t0)
# IR_LIT_STRING
xchain327_n84_α:
                        mov              qword ptr [rbp + 8016], 1
                        mov              rax, qword ptr [rip + .Lx431_0]
                        mov              qword ptr [rbp + 8024], rax
                        jmp              xchain327_n88_α
.Lx431_0:
                        .quad            .Lx431_0_s
.Lx431_0_s:
                        .string          "match_ms="
# IR_CMP_TEST
xchain327_n85_α:
                        lea              rdi, [rbp + 6640]
                        lea              rsi, [rbp + 6608]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                        jle              xchain327_n48_α
                        mov              qword ptr [rbp + 6576], 0
                        mov              qword ptr [rbp + 6584], 0
                        jmp              xchain327_n89_α
# IR_ASSIGN gva
xchain327_n86_α:
                        mov              rax, qword ptr [rbp + 7664]
                        mov              rdx, qword ptr [rbp + 7672]
                        mov              qword ptr [1879052768], rax
                        mov              qword ptr [1879052776], rdx
                        mov              qword ptr [rbp + 7648], rax
                        mov              qword ptr [rbp + 7656], rdx
                        jmp              xchain327_n87_α
#         TERMINAL = 'match_ms=' (t1 - t0)        :(END)
# IR_LIT_STRING
xchain327_n87_α:
                        mov              qword ptr [rbp + 7744], 1
                        mov              rax, qword ptr [rip + .Lx435_0]
                        mov              qword ptr [rbp + 7752], rax
                        jmp              xchain327_n90_α
.Lx435_0:
                        .quad            .Lx435_0_s
.Lx435_0_s:
                        .string          "match_ms="
# IR_VAR
xchain327_n88_α:
                        mov              rax, qword ptr [1879052768]
                        mov              rdx, qword ptr [1879052776]
                        mov              qword ptr [rbp + 8080], rax
                        mov              qword ptr [rbp + 8088], rdx
                        jmp              xchain327_n91_α
#         b2 = b2 b1
# IR_VAR
xchain327_n89_α:
                        mov              rax, qword ptr [1879052720]
                        mov              rdx, qword ptr [1879052728]
                        mov              qword ptr [rbp + 6832], rax
                        mov              qword ptr [rbp + 6840], rdx
                        jmp              xchain327_n92_α
# IR_VAR
xchain327_n90_α:
                        mov              rax, qword ptr [1879052768]
                        mov              rdx, qword ptr [1879052776]
                        mov              qword ptr [rbp + 7808], rax
                        mov              qword ptr [rbp + 7816], rdx
                        jmp              xchain327_n94_α
# IR_VAR
xchain327_n91_α:
                        mov              rax, qword ptr [1879052752]
                        mov              rdx, qword ptr [1879052760]
                        mov              qword ptr [rbp + 8112], rax
                        mov              qword ptr [rbp + 8120], rdx
                        jmp              xchain327_n95_α
# IR_VAR
xchain327_n92_α:
                        mov              rax, qword ptr [1879052704]
                        mov              rdx, qword ptr [1879052712]
                        mov              qword ptr [rbp + 6864], rax
                        mov              qword ptr [rbp + 6872], rdx
                        jmp              xchain327_n96_α
#         b1 =
# IR_LIT_STRING
xchain327_n93_α:
                        mov              qword ptr [rbp + 6912], 1
                        mov              rax, qword ptr [rip + .Lx441_0]
                        mov              qword ptr [rbp + 6920], rax
                        jmp              xchain327_n97_α
.Lx441_0:
                        .quad            .Lx441_0_s
.Lx441_0_s:
                        .string          ""
# IR_VAR
xchain327_n94_α:
                        mov              rax, qword ptr [1879052752]
                        mov              rdx, qword ptr [1879052760]
                        mov              qword ptr [rbp + 7840], rax
                        mov              qword ptr [rbp + 7848], rdx
                        jmp              xchain327_n98_α
xchain327_n95_α:
# IR_BINOP_ARITH
                        mov              eax, dword ptr [rbp + 8080]
                        cmp              eax, 100
                        je               .Lx443_0
                        mov              eax, dword ptr [rbp + 8112]
                        cmp              eax, 100
                        je               .Lx443_0
                        mov              eax, dword ptr [rbp + 8080]
                        cmp              eax, 6
                        jne              .Lx443_2
                        mov              eax, dword ptr [rbp + 8112]
                        cmp              eax, 6
                        jne              .Lx443_2
.Lx443_1:
                        mov              rax, qword ptr [rbp + 8088]
                        mov              rcx, qword ptr [rbp + 8120]
                        sub              rax, rcx
                        mov              qword ptr [rbp + 8048], 6
                        mov              qword ptr [rbp + 8056], rax
                        jmp              xchain327_n99_α
.Lx443_0:
                        mov              rdi, qword ptr [rbp + 8080]
                        mov              rsi, qword ptr [rbp + 8088]
                        mov              rdx, qword ptr [rbp + 8112]
                        mov              rcx, qword ptr [rbp + 8120]
                        mov              r8d, 1
                        lea              r9, [rbp + 8048]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                        jne              xchain327_n99_α
.Lx443_2:
                        mov              rdi, qword ptr [rbp + 8080]
                        mov              rsi, qword ptr [rbp + 8088]
                        mov              rdx, qword ptr [rbp + 8112]
                        mov              rcx, qword ptr [rbp + 8120]
                        mov              r8d, 1
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                        je               main_γ
                        mov              qword ptr [rbp + 8048], rax
                        mov              qword ptr [rbp + 8056], rdx
                        jmp              xchain327_n99_α
xchain327_n95_β:
                        jmp              main_γ
xchain327_n96_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 6832]
                        mov              rsi, qword ptr [rbp + 6840]
                        mov              rdx, qword ptr [rbp + 6864]
                        mov              rcx, qword ptr [rbp + 6872]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 6800], rax
                        mov              qword ptr [rbp + 6808], rdx
                        jmp              xchain327_n100_α
# IR_ASSIGN gva
xchain327_n97_α:
                        mov              rax, qword ptr [rbp + 6912]
                        mov              rdx, qword ptr [rbp + 6920]
                        mov              qword ptr [1879052704], rax
                        mov              qword ptr [1879052712], rdx
                        mov              qword ptr [rbp + 6896], rax
                        mov              qword ptr [rbp + 6904], rdx
                        jmp              xchain327_n101_α
xchain327_n98_α:
# IR_BINOP_ARITH
                        mov              eax, dword ptr [rbp + 7808]
                        cmp              eax, 100
                        je               .Lx446_0
                        mov              eax, dword ptr [rbp + 7840]
                        cmp              eax, 100
                        je               .Lx446_0
                        mov              eax, dword ptr [rbp + 7808]
                        cmp              eax, 6
                        jne              .Lx446_2
                        mov              eax, dword ptr [rbp + 7840]
                        cmp              eax, 6
                        jne              .Lx446_2
.Lx446_1:
                        mov              rax, qword ptr [rbp + 7816]
                        mov              rcx, qword ptr [rbp + 7848]
                        sub              rax, rcx
                        mov              qword ptr [rbp + 7776], 6
                        mov              qword ptr [rbp + 7784], rax
                        jmp              xchain327_n102_α
.Lx446_0:
                        mov              rdi, qword ptr [rbp + 7808]
                        mov              rsi, qword ptr [rbp + 7816]
                        mov              rdx, qword ptr [rbp + 7840]
                        mov              rcx, qword ptr [rbp + 7848]
                        mov              r8d, 1
                        lea              r9, [rbp + 7776]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                        jne              xchain327_n102_α
.Lx446_2:
                        mov              rdi, qword ptr [rbp + 7808]
                        mov              rsi, qword ptr [rbp + 7816]
                        mov              rdx, qword ptr [rbp + 7840]
                        mov              rcx, qword ptr [rbp + 7848]
                        mov              r8d, 1
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                        je               main_γ
                        mov              qword ptr [rbp + 7776], rax
                        mov              qword ptr [rbp + 7784], rdx
                        jmp              xchain327_n102_α
xchain327_n98_β:
                        jmp              main_γ
xchain327_n99_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 8016]
                        mov              rsi, qword ptr [rbp + 8024]
                        mov              rdx, qword ptr [rbp + 8048]
                        mov              rcx, qword ptr [rbp + 8056]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 7984], rax
                        mov              qword ptr [rbp + 7992], rdx
                        jmp              xchain327_n103_α
# IR_ASSIGN gva
xchain327_n100_α:
                        mov              rax, qword ptr [rbp + 6800]
                        mov              rdx, qword ptr [rbp + 6808]
                        mov              qword ptr [1879052720], rax
                        mov              qword ptr [1879052728], rdx
                        mov              qword ptr [rbp + 6784], rax
                        mov              qword ptr [rbp + 6792], rdx
                        jmp              xchain327_n93_α
#         GT(SIZE(b2), 262144)                    :F(slurp)
# IR_VAR
xchain327_n101_α:
                        mov              rax, qword ptr [1879052720]
                        mov              rdx, qword ptr [1879052728]
                        mov              qword ptr [rbp + 7120], rax
                        mov              qword ptr [rbp + 7128], rdx
                        jmp              xchain327_n104_α
xchain327_n102_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 7744]
                        mov              rsi, qword ptr [rbp + 7752]
                        mov              rdx, qword ptr [rbp + 7776]
                        mov              rcx, qword ptr [rbp + 7784]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 7712], rax
                        mov              qword ptr [rbp + 7720], rdx
                        jmp              xchain327_n105_α
# IR_ASSIGN global
xchain327_n103_α:
                        mov              rsi, qword ptr [rbp + 7984]
                        mov              rdx, qword ptr [rbp + 7992]
                        mov              rdi, qword ptr [rip + .Lx451_0]
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rbp + 7968], rax
                        mov              qword ptr [rbp + 7976], rdx
                        jmp              main_γ
.Lx451_0:
                        .quad            .Lx451_0_s
.Lx451_0_s:
                        .string          "TERMINAL"
xchain327_n104_α:
# BOX IR_CALL SIZE(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7120] -> [zr+7088]
                        mov              rax, qword ptr [rbp + 7120]
                        mov              qword ptr [rbp + 7088], rax
                        mov              rax, qword ptr [rbp + 7128]
                        mov              qword ptr [rbp + 7096], rax
                        .section         .rodata
.Lrkfn453:              .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn453]
                        lea              rsi, [rbp + 7088]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 7072], rax
                        mov              qword ptr [rbp + 7080], rdx
                        cmp              eax, 99
                        je               xchain327_n48_α
                        jmp              xchain327_n106_α
xchain327_n104_β:
                        jmp              xchain327_n48_α
# IR_ASSIGN global
xchain327_n105_α:
                        mov              rsi, qword ptr [rbp + 7712]
                        mov              rdx, qword ptr [rbp + 7720]
                        mov              rdi, qword ptr [rip + .Lx454_0]
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rbp + 7696], rax
                        mov              qword ptr [rbp + 7704], rdx
                        jmp              main_γ
.Lx454_0:
                        .quad            .Lx454_0_s
.Lx454_0_s:
                        .string          "TERMINAL"
# IR_LIT_INTEGER
xchain327_n106_α:
                        mov              qword ptr [rbp + 7040], 6
                        mov              rax, qword ptr [rip + .Lx455_0]
                        mov              qword ptr [rbp + 7048], rax
                        jmp              xchain327_n107_α
.Lx455_0:
                        .quad            262144
# IR_COERCE_NUMERIC
xchain327_n107_α:
                        mov              eax, dword ptr [rbp + 7072]
                        cmp              eax, 7
                        je               .Lx457_1
                        cmp              eax, 6
                        jne              .Lx457_0
                        mov              eax, dword ptr [rbp + 7040]
                        cmp              eax, 6
                        jne              .Lx457_0
.Lx457_1:
                        mov              rax, qword ptr [rbp + 7072]
                        mov              qword ptr [rbp + 7008], rax
                        mov              rax, qword ptr [rbp + 7080]
                        mov              qword ptr [rbp + 7016], rax
                        jmp              xchain327_n108_α
.Lx457_0:
                        lea              rdi, [rbp + 7072]
                        lea              rsi, [rbp + 7040]
                        lea              rdx, [rbp + 7008]
                        mov              rcx, 111
                        call             rt_coerce_num2_d@PLT
                        jmp              xchain327_n108_α
# IR_COERCE_NUMERIC
xchain327_n108_α:
                        mov              eax, dword ptr [rbp + 7040]
                        cmp              eax, 7
                        je               .Lx459_1
                        cmp              eax, 6
                        jne              .Lx459_0
                        mov              eax, dword ptr [rbp + 7072]
                        cmp              eax, 6
                        jne              .Lx459_0
.Lx459_1:
                        mov              rax, qword ptr [rbp + 7040]
                        mov              qword ptr [rbp + 6976], rax
                        mov              rax, qword ptr [rbp + 7048]
                        mov              qword ptr [rbp + 6984], rax
                        jmp              xchain327_n109_α
.Lx459_0:
                        lea              rdi, [rbp + 7040]
                        lea              rsi, [rbp + 7072]
                        lea              rdx, [rbp + 6976]
                        mov              rcx, 112
                        call             rt_coerce_num2_d@PLT
                        jmp              xchain327_n109_α
# IR_CMP_TEST
xchain327_n109_α:
                        lea              rdi, [rbp + 7008]
                        lea              rsi, [rbp + 6976]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                        jle              xchain327_n48_α
                        mov              qword ptr [rbp + 6944], 0
                        mov              qword ptr [rbp + 6952], 0
                        jmp              xchain327_n110_α
#         src = src b2
# IR_VAR
xchain327_n110_α:
                        mov              rax, qword ptr [1879052736]
                        mov              rdx, qword ptr [1879052744]
                        mov              qword ptr [rbp + 7200], rax
                        mov              qword ptr [rbp + 7208], rdx
                        jmp              xchain327_n111_α
# IR_VAR
xchain327_n111_α:
                        mov              rax, qword ptr [1879052720]
                        mov              rdx, qword ptr [1879052728]
                        mov              qword ptr [rbp + 7232], rax
                        mov              qword ptr [rbp + 7240], rdx
                        jmp              xchain327_n113_α
#         b2 =                                    :(slurp)
# IR_LIT_STRING
xchain327_n112_α:
                        mov              qword ptr [rbp + 7280], 1
                        mov              rax, qword ptr [rip + .Lx464_0]
                        mov              qword ptr [rbp + 7288], rax
                        jmp              xchain327_n114_α
.Lx464_0:
                        .quad            .Lx464_0_s
.Lx464_0_s:
                        .string          ""
xchain327_n113_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 7200]
                        mov              rsi, qword ptr [rbp + 7208]
                        mov              rdx, qword ptr [rbp + 7232]
                        mov              rcx, qword ptr [rbp + 7240]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 7168], rax
                        mov              qword ptr [rbp + 7176], rdx
                        jmp              xchain327_n115_α
# IR_ASSIGN gva
xchain327_n114_α:
                        mov              rax, qword ptr [rbp + 7280]
                        mov              rdx, qword ptr [rbp + 7288]
                        mov              qword ptr [1879052720], rax
                        mov              qword ptr [1879052728], rdx
                        mov              qword ptr [rbp + 7264], rax
                        mov              qword ptr [rbp + 7272], rdx
                        jmp              xchain327_n48_α
# IR_ASSIGN gva
xchain327_n115_α:
                        mov              rax, qword ptr [rbp + 7168]
                        mov              rdx, qword ptr [rbp + 7176]
                        mov              qword ptr [1879052736], rax
                        mov              qword ptr [1879052744], rdx
                        mov              qword ptr [rbp + 7152], rax
                        mov              qword ptr [rbp + 7160], rdx
                        jmp              xchain327_n112_α
main_β:
jmp main_ω
main_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [rbp + 8152]
mov rbp, [rsp + 65536]
add rsp, 65544
ret
main_ω:
mov rsp, qword ptr [rbp + 8152]
mov dword ptr [rsp+0], 99
mov dword ptr [rsp+4], 0
mov qword ptr [rsp+8], 0
mov eax, 99
xor edx, edx
mov rbp, [rsp + 65536]
add rsp, 65544
ret
.section .rodata
.S0: .string "*PSH"
.S1: .string "V"
.S2: .string "I"
.S3: .string "X"
.S4: .string "A"
.S5: .string "*SGN"
.S6: .string "F"
.S7: .string "*DIV"
.S8: .string "*MUL"
.S9: .string "T"
.S10: .string "*SUB"
.S11: .string "*ADD"
.S12: .string "epsilon"
.S13: .string "eol"
.S14: .string "*EMIT"
.S15: .string "C"
.text
.section .rodata
.C0:
 .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
 .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
 .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
 .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
 .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
 .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
 .byte 0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
 .byte 1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0
 .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
 .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
 .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
 .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
 .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
 .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
 .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
 .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
.C1:
 .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
 .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
 .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
 .byte 1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0
 .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
 .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
 .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
 .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
 .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
 .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
 .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
 .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
 .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
 .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
 .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
 .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
.text
