  .intel_syntax noprefix
  .text
  .globl proc_PAT$0_α
proc_PAT$0_α:
#=======================================================================================================================
    .global proc_PAT$0_α
    .global proc_PAT$0_β
    .global proc_PAT$0_γ
    .global proc_PAT$0_ω
  sub rsp, 96
  mov [rsp + 72], rcx
  mov [rsp + 80], rdx
  mov [rsp + 88], rbp
  mov rbp, rsp
  mov qword ptr [rsp], 0
  mov qword ptr [rsp + 8], 0
  mov qword ptr [rsp + 32], 0
  mov qword ptr [rsp + 40], 0
  mov qword ptr [rsp + 48], 0
  mov qword ptr [rsp + 56], rsp
mov qword ptr [rbp + 64], r8
mov dword ptr [rbp + 56], r14d
proc_PAT$0_attempt:
proc_PAT$0_α_body:
lea rax, [rip + xchain0_n0_β]
mov qword ptr [rbp + 32], rax
# IR_MATCH_SPAN
xchain0_n0_α:
                        sub              rsp, 16
                        movsxd           rcx, r14d
.Lx2_0:
                        cmp              ecx, r15d
                        jge              .Lx2_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 32
                        je               .Lx2_10
                        cmp              esi, 10
                        je               .Lx2_10
                        jmp              .Lx2_1
.Lx2_10:
                        add              ecx, 1
                        cmp              ecx, r15d
                        jge              .Lx2_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 32
                        je               .Lx2_11
                        cmp              esi, 10
                        je               .Lx2_11
                        jmp              .Lx2_1
.Lx2_11:
                        add              ecx, 1
                        cmp              ecx, r15d
                        jge              .Lx2_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 32
                        je               .Lx2_12
                        cmp              esi, 10
                        je               .Lx2_12
                        jmp              .Lx2_1
.Lx2_12:
                        add              ecx, 1
                        cmp              ecx, r15d
                        jge              .Lx2_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 32
                        je               .Lx2_13
                        cmp              esi, 10
                        je               .Lx2_13
                        jmp              .Lx2_1
.Lx2_13:
                        add              ecx, 1
                        jmp              .Lx2_0
.Lx2_1:
                        cmp              ecx, r14d
                        jg               .Lx2_240
                        add              rsp, 16
                        jmp              proc_PAT$0_scanfail
.Lx2_240:
                        mov              dword ptr [rsp + 4], r14d
                        mov              r14d, ecx
                        jmp              proc_PAT$0_scanhit
xchain0_n0_β:
xchain0_n0_β:
                        mov              r14d, dword ptr [rsp + 4]
                        add              rsp, 16
                        jmp              proc_PAT$0_scanfail
proc_PAT$0_scanhit:
cmp qword ptr [rbp + 64], 1
jne 7f
mov ecx, dword ptr [rbp + 56]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$0_γ
proc_PAT$0_scanfail:
cmp qword ptr [rbp + 64], 1
jne 8f
mov eax, dword ptr [rbp + 56]
inc eax
cmp eax, r15d
jg 8f
lea rcx, [rip + g_anchor]
cmp qword ptr [rcx], 0
jne 8f
mov dword ptr [rbp + 56], eax
mov r14d, eax
mov rsp, rbp
jmp proc_PAT$0_attempt
8:
jmp proc_PAT$0_ω
proc_PAT$0_res:
add rsp, 8
pop rbp
proc_PAT$0_β:
jmp qword ptr [rbp + 32]
proc_PAT$0_γ:
push rbp
lea rax, [rip + proc_PAT$0_res]
push rax
mov rax, [rbp + 72]
mov rbp, [rbp + 88]
jmp rax
proc_PAT$0_ω:
mov rax, [rbp + 80]
lea rsp, [rbp + 96]
mov rbp, [rbp + 88]
jmp rax
  .globl proc_PAT$1_α
proc_PAT$1_α:
#=======================================================================================================================
    .global proc_PAT$1_α
    .global proc_PAT$1_β
    .global proc_PAT$1_γ
    .global proc_PAT$1_ω
  sub rsp, 128
  mov [rsp + 104], rcx
  mov [rsp + 112], rdx
  mov [rsp + 120], rbp
  mov rbp, rsp
  mov qword ptr [rsp], 0
  mov qword ptr [rsp + 8], 0
  mov qword ptr [rsp + 64], 0
  mov qword ptr [rsp + 72], 0
  mov qword ptr [rsp + 80], 0
  mov qword ptr [rsp + 88], rsp
mov qword ptr [rbp + 96], r8
mov dword ptr [rbp + 88], r14d
proc_PAT$1_attempt:
proc_PAT$1_α_body:
lea rax, [rip + xchain3_n0_β]
mov qword ptr [rbp + 64], rax
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
xchain3_n0_α:
                        jmp              xchain3_n1_α
xchain3_n0_as:
                        jmp              proc_PAT$1_γ
xchain3_n0_β:
                        jmp              xchain3_n2_β
xchain3_n0_af:
                        jmp              proc_PAT$1_ω
# IR_MATCH_NOTANY
xchain3_n1_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                        jge              proc_PAT$1_ω
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C0]
                        cmp              byte ptr [rdi+rsi], 0
                        jne              proc_PAT$1_ω
                        add              r14d, 1
                        jmp              xchain3_n2_α
xchain3_n1_β:
                        sub              r14d, 1
                        jmp              proc_PAT$1_ω
# IR_MATCH_BREAK
xchain3_n2_α:
                        sub              rsp, 16
                        lea              rdi, [rip + .C0]
                        movsxd           rcx, r14d
.Lx8_0:
                        cmp              ecx, r15d
                        jl               .Lx8_237
                        add              rsp, 16
                        jmp              xchain3_n1_β
.Lx8_237:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                        jnz              .Lx8_1
                        add              ecx, 1
                        cmp              ecx, r15d
                        jl               .Lx8_238
                        add              rsp, 16
                        jmp              xchain3_n1_β
.Lx8_238:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                        jnz              .Lx8_1
                        add              ecx, 1
                        cmp              ecx, r15d
                        jl               .Lx8_239
                        add              rsp, 16
                        jmp              xchain3_n1_β
.Lx8_239:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                        jnz              .Lx8_1
                        add              ecx, 1
                        cmp              ecx, r15d
                        jl               .Lx8_240
                        add              rsp, 16
                        jmp              xchain3_n1_β
.Lx8_240:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                        jnz              .Lx8_1
                        add              ecx, 1
                        jmp              .Lx8_0
.Lx8_1:
                        mov              dword ptr [rsp + 0], r14d
                        mov              r14d, ecx
                        jmp              proc_PAT$1_γ
xchain3_n2_β:
                        mov              r14d, dword ptr [rsp + 0]
                        add              rsp, 16
                        jmp              xchain3_n1_β
proc_PAT$1_scanhit:
cmp qword ptr [rbp + 96], 1
jne 7f
mov ecx, dword ptr [rbp + 88]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$1_γ
proc_PAT$1_scanfail:
cmp qword ptr [rbp + 96], 1
jne 8f
mov eax, dword ptr [rbp + 88]
inc eax
cmp eax, r15d
jg 8f
lea rcx, [rip + g_anchor]
cmp qword ptr [rcx], 0
jne 8f
mov dword ptr [rbp + 88], eax
mov r14d, eax
mov rsp, rbp
jmp proc_PAT$1_attempt
8:
jmp proc_PAT$1_ω
proc_PAT$1_res:
add rsp, 8
pop rbp
proc_PAT$1_β:
jmp qword ptr [rbp + 64]
proc_PAT$1_γ:
push rbp
lea rax, [rip + proc_PAT$1_res]
push rax
mov rax, [rbp + 104]
mov rbp, [rbp + 120]
jmp rax
proc_PAT$1_ω:
mov rax, [rbp + 112]
lea rsp, [rbp + 128]
mov rbp, [rbp + 120]
jmp rax
  .globl proc_PAT$2_α
proc_PAT$2_α:
#=======================================================================================================================
    .global proc_PAT$2_α
    .global proc_PAT$2_β
    .global proc_PAT$2_γ
    .global proc_PAT$2_ω
  sub rsp, 288
  mov [rsp + 264], rcx
  mov [rsp + 272], rdx
  mov [rsp + 280], rbp
  mov rbp, rsp
  mov qword ptr [rsp], 0
  mov qword ptr [rsp + 8], 0
  mov qword ptr [rsp + 224], 0
  mov qword ptr [rsp + 232], 0
  mov qword ptr [rsp + 240], 0
  mov qword ptr [rsp + 248], rsp
mov qword ptr [rbp + 256], r8
mov dword ptr [rbp + 248], r14d
proc_PAT$2_attempt:
proc_PAT$2_α_body:
lea rax, [rip + xchain9_n0_β]
mov qword ptr [rbp + 224], rax
# IR_MATCH_SEQ_NARY (SPD SEQ-STATIC: zero-counter, sigma/phi statically wired)
xchain9_n0_α:
                        mov              dword ptr [rbp + 16], r14d
                        jmp              xchain9_n1_α
xchain9_n0_as:
                        jmp              proc_PAT$2_γ
xchain9_n0_β:
                        jmp              xchain9_n4_β
xchain9_n0_af:
                        jmp              proc_PAT$2_ω
# IR_MATCH_LIT
xchain9_n1_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                        jg               proc_PAT$2_ω
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 40
                        jne              proc_PAT$2_ω
                        add              r14d, 1
                        jmp              xchain9_n2_α
xchain9_n1_β:
                        sub              r14d, 1
                        jmp              proc_PAT$2_ω
# IR_MATCH_DEFER (ZS-2 jmp-entry)
xchain9_n2_α:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                        jne              .Lx14_11
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        cmp              eax, 3
                        jne              .Lx14_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                        jne              .Lx14_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                        jmp              .Lx14_10
.Lx14_9:
                        xor              eax, eax
.Lx14_10:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              qword ptr [rsi + 0], rax
.Lx14_11:
                        test             rax, rax
                        jz               .Lx14_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx14_4]
                        lea              rdx, [rip + .Lx14_5]
                        jmp              rax
.Lx14_4:
                        jmp              xchain9_n3_α
.Lx14_5:
                        jmp              xchain9_n1_β
.Lx14_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx14_2:
                        test             rax, rax
                        je               .Lx14_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx14_7]
                        lea              rdx, [rip + .Lx14_8]
                        jmp              rax
.Lx14_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx14_2
.Lx14_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx14_2
.Lx14_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                        js               xchain9_n1_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx14_6]
                        sub              rsp, 8
                        push             rax
                        jmp              xchain9_n3_α
.Lx14_6:
                        add              rsp, 16
                        jmp              xchain9_n1_β
xchain9_n2_β:
                        jmp              qword ptr [rsp]
# IR_MATCH_ARBNO_NARY (ZB-FC-4 rsp linked-frame-chain)
xchain9_n3_α:
                        mov              dword ptr [rbp + 80], r14d
                        mov              dword ptr [rbp + 84], r14d
                        mov              dword ptr [rbp + 88], 0
                        mov              qword ptr [rbp + 104], rsp
                        mov              qword ptr [rbp + 96], 0
                        jmp              xchain9_n4_α
xchain9_n3_β:
                        mov              r14d, dword ptr [rbp + 84]
                        mov              rax, qword ptr [rbp + 96]
                        sub              rsp, 144
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 96], rsp
                        mov              rbp, rsp
                        add              rbp, -88
                        jmp              xchain9_n5_α
xchain9_n3_as:
                        mov              eax, dword ptr [rbp + 96]
                        cmp              r14d, eax
                        je               xchain9_n5_β
                        mov              rbp, qword ptr [rbp + 88]
                        mov              eax, dword ptr [rbp + 88]
                        add              eax, 1
                        mov              dword ptr [rbp + 88], eax
                        mov              dword ptr [rbp + 84], r14d
                        jmp              xchain9_n4_α
xchain9_n3_af:
                        mov              rax, qword ptr [rbp + 104]
                        mov              rdx, qword ptr [rbp + 88]
                        lea              rsp, [rbp + 232]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 88]
                        test             ecx, ecx
                        jz               .Lx16_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 88], ecx
                        mov              qword ptr [rbp + 96], rax
                        lea              rbp, [rax + -88]
                        jmp              xchain9_n5_β
.Lx16_2:
                        mov              r14d, dword ptr [rbp + 80]
                        mov              rsp, qword ptr [rbp + 104]
                        jmp              xchain9_n2_β
# IR_MATCH_LIT
xchain9_n4_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                        jg               xchain9_n3_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 41
                        jne              xchain9_n3_β
                        add              r14d, 1
                        jmp              proc_PAT$2_γ
xchain9_n4_β:
                        sub              r14d, 1
                        jmp              xchain9_n3_β
# IR_MATCH_SEQ_NARY (SPD SEQ-STATIC: zero-counter, sigma/phi statically wired)
xchain9_n5_α:
                        mov              dword ptr [rbp + 128], r14d
                        jmp              xchain9_n7_α
xchain9_n5_as:
                        jmp              xchain9_n3_as
xchain9_n5_β:
                        jmp              xchain9_n8_β
xchain9_n5_af:
                        jmp              xchain9_n3_af
# IR_MATCH_DEFER (ZS-2 jmp-entry)
xchain9_n6_α:
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                        jne              .Lx21_11
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        cmp              eax, 3
                        jne              .Lx21_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                        jne              .Lx21_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                        jmp              .Lx21_10
.Lx21_9:
                        xor              eax, eax
.Lx21_10:
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              qword ptr [rsi + 0], rax
.Lx21_11:
                        test             rax, rax
                        jz               .Lx21_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx21_4]
                        lea              rdx, [rip + .Lx21_5]
                        jmp              rax
.Lx21_4:
                        jmp              xchain9_n8_as
.Lx21_5:
                        jmp              xchain9_n8_af
.Lx21_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx21_2:
                        test             rax, rax
                        je               .Lx21_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx21_7]
                        lea              rdx, [rip + .Lx21_8]
                        jmp              rax
.Lx21_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx21_2
.Lx21_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx21_2
.Lx21_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                        js               xchain9_n8_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx21_6]
                        sub              rsp, 8
                        push             rax
                        jmp              xchain9_n8_as
.Lx21_6:
                        add              rsp, 16
                        jmp              xchain9_n8_af
xchain9_n6_β:
                        jmp              qword ptr [rsp]
# IR_MATCH_DEFER (ZS-2 jmp-entry)
xchain9_n7_α:
                        lea              rsi, [rip + g_sno_defer_cells+16]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                        jne              .Lx22_11
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 3
                        jne              .Lx22_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                        jne              .Lx22_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                        jmp              .Lx22_10
.Lx22_9:
                        xor              eax, eax
.Lx22_10:
                        lea              rsi, [rip + g_sno_defer_cells+16]
                        mov              qword ptr [rsi + 0], rax
.Lx22_11:
                        test             rax, rax
                        jz               .Lx22_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx22_4]
                        lea              rdx, [rip + .Lx22_5]
                        jmp              rax
.Lx22_4:
                        jmp              xchain9_n8_α
.Lx22_5:
                        jmp              xchain9_n3_af
.Lx22_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx22_2:
                        test             rax, rax
                        je               .Lx22_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx22_7]
                        lea              rdx, [rip + .Lx22_8]
                        jmp              rax
.Lx22_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx22_2
.Lx22_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx22_2
.Lx22_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                        js               xchain9_n3_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx22_6]
                        sub              rsp, 8
                        push             rax
                        jmp              xchain9_n8_α
.Lx22_6:
                        add              rsp, 16
                        jmp              xchain9_n3_af
xchain9_n7_β:
                        jmp              qword ptr [rsp]
# IR_MATCH_ALT_NARY
xchain9_n8_α:
                        mov              dword ptr [rbp + 160], r14d
                        mov              dword ptr [rbp + 164], 0
                        jmp              xchain9_n9_α
xchain9_n8_as:
                        jmp              xchain9_n3_as
xchain9_n8_β:
                        mov              eax, dword ptr [rbp + 164]
                        cmp              eax, 0
                        je               xchain9_n9_β
                        jmp              xchain9_n6_β
xchain9_n8_af:
                        add              dword ptr [rbp + 164], 1
                        mov              r14d, dword ptr [rbp + 160]
                        mov              eax, dword ptr [rbp + 164]
                        cmp              eax, 1
                        je               xchain9_n6_α
                        jmp              xchain9_n7_β
# IR_MATCH_DEFER (ZS-2 jmp-entry)
xchain9_n9_α:
                        lea              rsi, [rip + g_sno_defer_cells+24]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                        jne              .Lx25_11
                        mov              rax, qword ptr [1879052320]
                        mov              rdx, qword ptr [1879052328]
                        cmp              eax, 3
                        jne              .Lx25_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                        jne              .Lx25_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                        jmp              .Lx25_10
.Lx25_9:
                        xor              eax, eax
.Lx25_10:
                        lea              rsi, [rip + g_sno_defer_cells+24]
                        mov              qword ptr [rsi + 0], rax
.Lx25_11:
                        test             rax, rax
                        jz               .Lx25_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx25_4]
                        lea              rdx, [rip + .Lx25_5]
                        jmp              rax
.Lx25_4:
                        jmp              xchain9_n8_as
.Lx25_5:
                        jmp              xchain9_n8_af
.Lx25_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S2]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx25_2:
                        test             rax, rax
                        je               .Lx25_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx25_7]
                        lea              rdx, [rip + .Lx25_8]
                        jmp              rax
.Lx25_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx25_2
.Lx25_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx25_2
.Lx25_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                        js               xchain9_n8_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx25_6]
                        sub              rsp, 8
                        push             rax
                        jmp              xchain9_n8_as
.Lx25_6:
                        add              rsp, 16
                        jmp              xchain9_n8_af
xchain9_n9_β:
                        jmp              qword ptr [rsp]
proc_PAT$2_scanhit:
cmp qword ptr [rbp + 256], 1
jne 7f
mov ecx, dword ptr [rbp + 248]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$2_γ
proc_PAT$2_scanfail:
cmp qword ptr [rbp + 256], 1
jne 8f
mov eax, dword ptr [rbp + 248]
inc eax
cmp eax, r15d
jg 8f
lea rcx, [rip + g_anchor]
cmp qword ptr [rcx], 0
jne 8f
mov dword ptr [rbp + 248], eax
mov r14d, eax
mov rsp, rbp
jmp proc_PAT$2_attempt
8:
jmp proc_PAT$2_ω
proc_PAT$2_res:
add rsp, 8
pop rbp
proc_PAT$2_β:
jmp qword ptr [rbp + 224]
proc_PAT$2_γ:
push rbp
lea rax, [rip + proc_PAT$2_res]
push rax
mov rax, [rbp + 264]
mov rbp, [rbp + 280]
jmp rax
proc_PAT$2_ω:
mov rax, [rbp + 272]
lea rsp, [rbp + 288]
mov rbp, [rbp + 280]
jmp rax
  .globl proc_PAT$3_α
proc_PAT$3_α:
#=======================================================================================================================
    .global proc_PAT$3_α
    .global proc_PAT$3_β
    .global proc_PAT$3_γ
    .global proc_PAT$3_ω
  sub rsp, 368
  mov [rsp + 344], rcx
  mov [rsp + 352], rdx
  mov [rsp + 360], rbp
  mov rbp, rsp
  mov qword ptr [rsp], 0
  mov qword ptr [rsp + 8], 0
  mov qword ptr [rsp + 304], 0
  mov qword ptr [rsp + 312], 0
  mov qword ptr [rsp + 320], 0
  mov qword ptr [rsp + 328], rsp
mov qword ptr [rbp + 336], r8
mov dword ptr [rbp + 328], r14d
proc_PAT$3_attempt:
proc_PAT$3_α_body:
lea rax, [rip + xchain26_n0_β]
mov qword ptr [rbp + 304], rax
# IR_MATCH_SEQ_NARY (SPD SEQ-STATIC: zero-counter, sigma/phi statically wired)
xchain26_n0_α:
                        mov              dword ptr [rbp + 16], r14d
                        jmp              xchain26_n1_α
xchain26_n0_as:
                        jmp              proc_PAT$3_γ
xchain26_n0_β:
                        jmp              xchain26_n5_β
xchain26_n0_af:
                        jmp              proc_PAT$3_ω
# IR_LIT_INTEGER
xchain26_n1_α:
                        mov              qword ptr [rbp + 48], 6
                        mov              rax, qword ptr [rip + .Lx29_0]
                        mov              qword ptr [rbp + 56], rax
                        jmp              xchain26_n2_α
xchain26_n1_β:
                        jmp              proc_PAT$3_ω
.Lx29_0:
                        .quad            0
# IR_MATCH_POS
xchain26_n2_α:
                        mov              rax, 0
                        cmp              r14d, eax
                        jne              proc_PAT$3_ω
                        jmp              xchain26_n3_α
xchain26_n2_β:
                        jmp              proc_PAT$3_ω
# IR_MATCH_ARBNO_NARY (ZB-FC-4 rsp linked-frame-chain)
xchain26_n3_α:
                        mov              dword ptr [rbp + 96], r14d
                        mov              dword ptr [rbp + 100], r14d
                        mov              dword ptr [rbp + 104], 0
                        mov              qword ptr [rbp + 120], rsp
                        mov              qword ptr [rbp + 112], 0
                        jmp              xchain26_n4_α
xchain26_n3_β:
                        mov              r14d, dword ptr [rbp + 100]
                        mov              rax, qword ptr [rbp + 112]
                        sub              rsp, 176
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 112], rsp
                        mov              rbp, rsp
                        add              rbp, -104
                        jmp              xchain26_n6_α
xchain26_n3_as:
                        mov              eax, dword ptr [rbp + 112]
                        cmp              r14d, eax
                        je               xchain26_n6_β
                        mov              rbp, qword ptr [rbp + 104]
                        mov              eax, dword ptr [rbp + 104]
                        add              eax, 1
                        mov              dword ptr [rbp + 104], eax
                        mov              dword ptr [rbp + 100], r14d
                        jmp              xchain26_n4_α
xchain26_n3_af:
                        mov              rax, qword ptr [rbp + 120]
                        mov              rdx, qword ptr [rbp + 104]
                        lea              rsp, [rbp + 280]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 104]
                        test             ecx, ecx
                        jz               .Lx32_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 104], ecx
                        mov              qword ptr [rbp + 112], rax
                        lea              rbp, [rax + -104]
                        jmp              xchain26_n6_β
.Lx32_2:
                        mov              r14d, dword ptr [rbp + 96]
                        mov              rsp, qword ptr [rbp + 120]
                        jmp              xchain26_n2_β
# IR_LIT_INTEGER
xchain26_n4_α:
                        mov              qword ptr [rbp + 272], 6
                        mov              rax, qword ptr [rip + .Lx33_0]
                        mov              qword ptr [rbp + 280], rax
                        jmp              xchain26_n5_α
xchain26_n4_β:
                        jmp              xchain26_n3_β
.Lx33_0:
                        .quad            0
# IR_MATCH_RPOS
xchain26_n5_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                        jne              xchain26_n3_β
                        jmp              proc_PAT$3_γ
xchain26_n5_β:
                        jmp              xchain26_n3_β
# IR_MATCH_SEQ_NARY (SPD SEQ-STATIC: zero-counter, sigma/phi statically wired)
xchain26_n6_α:
                        mov              dword ptr [rbp + 144], r14d
                        jmp              xchain26_n8_α
xchain26_n6_as:
                        jmp              xchain26_n3_as
xchain26_n6_β:
                        jmp              xchain26_n7_β
xchain26_n6_af:
                        jmp              xchain26_n3_af
# IR_MATCH_DEFER (ZS-2 jmp-entry)
xchain26_n7_α:
                        lea              rsi, [rip + g_sno_defer_cells+32]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                        jne              .Lx37_11
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 3
                        jne              .Lx37_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                        jne              .Lx37_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                        jmp              .Lx37_10
.Lx37_9:
                        xor              eax, eax
.Lx37_10:
                        lea              rsi, [rip + g_sno_defer_cells+32]
                        mov              qword ptr [rsi + 0], rax
.Lx37_11:
                        test             rax, rax
                        jz               .Lx37_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx37_4]
                        lea              rdx, [rip + .Lx37_5]
                        jmp              rax
.Lx37_4:
                        jmp              xchain26_n3_as
.Lx37_5:
                        jmp              xchain26_n8_β
.Lx37_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx37_2:
                        test             rax, rax
                        je               .Lx37_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx37_7]
                        lea              rdx, [rip + .Lx37_8]
                        jmp              rax
.Lx37_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx37_2
.Lx37_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx37_2
.Lx37_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                        js               xchain26_n8_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx37_6]
                        sub              rsp, 8
                        push             rax
                        jmp              xchain26_n3_as
.Lx37_6:
                        add              rsp, 16
                        jmp              xchain26_n8_β
xchain26_n7_β:
                        jmp              qword ptr [rsp]
# IR_MATCH_ARBNO_NARY (ZB-FC-4 rsp linked-frame-chain)
xchain26_n8_α:
                        mov              dword ptr [rbp + 176], r14d
                        mov              dword ptr [rbp + 180], r14d
                        mov              dword ptr [rbp + 184], 0
                        mov              qword ptr [rbp + 200], rsp
                        mov              qword ptr [rbp + 192], 0
                        jmp              xchain26_n7_α
xchain26_n8_β:
                        mov              r14d, dword ptr [rbp + 180]
                        mov              rax, qword ptr [rbp + 192]
                        sub              rsp, 64
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 192], rsp
                        mov              rbp, rsp
                        add              rbp, -184
                        jmp              xchain26_n9_α
xchain26_n8_as:
                        mov              eax, dword ptr [rbp + 192]
                        cmp              r14d, eax
                        je               xchain26_n9_β
                        mov              rbp, qword ptr [rbp + 184]
                        mov              eax, dword ptr [rbp + 184]
                        add              eax, 1
                        mov              dword ptr [rbp + 184], eax
                        mov              dword ptr [rbp + 180], r14d
                        jmp              xchain26_n7_α
xchain26_n8_af:
                        mov              rax, qword ptr [rbp + 200]
                        mov              rdx, qword ptr [rbp + 184]
                        lea              rsp, [rbp + 248]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 184]
                        test             ecx, ecx
                        jz               .Lx39_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 184], ecx
                        mov              qword ptr [rbp + 192], rax
                        lea              rbp, [rax + -184]
                        jmp              xchain26_n9_β
.Lx39_2:
                        mov              r14d, dword ptr [rbp + 176]
                        mov              rsp, qword ptr [rbp + 200]
                        jmp              xchain26_n3_af
# IR_MATCH_DEFER (ZS-2 jmp-entry)
xchain26_n9_α:
                        lea              rsi, [rip + g_sno_defer_cells+40]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                        jne              .Lx40_11
                        mov              rax, qword ptr [1879052320]
                        mov              rdx, qword ptr [1879052328]
                        cmp              eax, 3
                        jne              .Lx40_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                        jne              .Lx40_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                        jmp              .Lx40_10
.Lx40_9:
                        xor              eax, eax
.Lx40_10:
                        lea              rsi, [rip + g_sno_defer_cells+40]
                        mov              qword ptr [rsi + 0], rax
.Lx40_11:
                        test             rax, rax
                        jz               .Lx40_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx40_4]
                        lea              rdx, [rip + .Lx40_5]
                        jmp              rax
.Lx40_4:
                        jmp              xchain26_n8_as
.Lx40_5:
                        jmp              xchain26_n8_af
.Lx40_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S2]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx40_2:
                        test             rax, rax
                        je               .Lx40_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx40_7]
                        lea              rdx, [rip + .Lx40_8]
                        jmp              rax
.Lx40_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx40_2
.Lx40_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx40_2
.Lx40_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                        js               xchain26_n8_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx40_6]
                        sub              rsp, 8
                        push             rax
                        jmp              xchain26_n8_as
.Lx40_6:
                        add              rsp, 16
                        jmp              xchain26_n8_af
xchain26_n9_β:
                        jmp              qword ptr [rsp]
proc_PAT$3_scanhit:
cmp qword ptr [rbp + 336], 1
jne 7f
mov ecx, dword ptr [rbp + 328]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$3_γ
proc_PAT$3_scanfail:
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
jmp proc_PAT$3_attempt
8:
jmp proc_PAT$3_ω
proc_PAT$3_res:
add rsp, 8
pop rbp
proc_PAT$3_β:
jmp qword ptr [rbp + 304]
proc_PAT$3_γ:
push rbp
lea rax, [rip + proc_PAT$3_res]
push rax
mov rax, [rbp + 344]
mov rbp, [rbp + 360]
jmp rax
proc_PAT$3_ω:
mov rax, [rbp + 352]
lea rsp, [rbp + 368]
mov rbp, [rbp + 360]
jmp rax
proc_startup:
  sub rsp, 8
  .section .rodata
  .Lstartup_pname0: .string "PAT$0"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_PAT$0_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 64
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1
  call rt_proc_set_zstatic@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname1: .string "PAT$1"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname1]
  lea rsi, [rip + proc_PAT$1_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 96
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1
  call rt_proc_set_zstatic@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname2: .string "PAT$2"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname2]
  lea rsi, [rip + proc_PAT$2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 256
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname3: .string "PAT$3"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname3]
  lea rsi, [rip + proc_PAT$3_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 336
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  add rsp, 8
  ret
  .section .rodata
  .Lgvan0: .string "delim"
  .Lgvan1: .string "word"
  .Lgvan2: .string "group"
  .Lgvan3: .string "treebank"
  .Lgvan4: .string "src"
  .align 8
__gva_names:
  .quad .Lgvan0
  .quad .Lgvan1
  .quad .Lgvan2
  .quad .Lgvan3
  .quad .Lgvan4
  .section .text
  .intel_syntax noprefix
  .globl main
main:
  sub rsp, 8
  push rdi
  push rsi
  call core_lib_init@PLT
  call proc_startup
  mov edi, 5
  call rt_gva_island@PLT
  mov rsi, rax
  lea rdi, [rip + __gva_names]
  mov edx, 5
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
  mov qword ptr [rsp + 1208], rsp
  mov r12, qword ptr [1879048192]
  mov [rsp + 65536], rbp
  mov rbp, rsp
main_α_body:
#                delim          =  SPAN(' ' CHAR(10))
# IR_LIT_STRING
xchain41_n0_α:
                        mov              qword ptr [rbp + 160], 1
                        mov              rax, qword ptr [rip + .Lx42_0]
                        mov              qword ptr [rbp + 168], rax
                        jmp              xchain41_n1_α
.Lx42_0:
                        .quad            .Lx42_0_s
.Lx42_0_s:
                        .string          "PAT$0"
xchain41_n1_α:
# BOX IR_CALL SNO$MKPAT(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+160] -> [zr+128]
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 136], rax
                        .section         .rodata
.Lrkfn44:               .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn44]
                        lea              rsi, [rbp + 128]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                        je               xchain41_n3_α
                        jmp              xchain41_n2_α
xchain41_n1_β:
                        jmp              xchain41_n3_α
# IR_ASSIGN gva
xchain41_n2_α:
                        mov              rax, qword ptr [rbp + 112]
                        mov              rdx, qword ptr [rbp + 120]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        jmp              xchain41_n3_α
#                word           =  NOTANY('( )' CHAR(10)) BREAK('( )' CHAR(10))
# IR_LIT_STRING
xchain41_n3_α:
                        mov              qword ptr [rbp + 256], 1
                        mov              rax, qword ptr [rip + .Lx46_0]
                        mov              qword ptr [rbp + 264], rax
                        jmp              xchain41_n4_α
.Lx46_0:
                        .quad            .Lx46_0_s
.Lx46_0_s:
                        .string          "PAT$1"
xchain41_n4_α:
# BOX IR_CALL SNO$MKPAT(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+256] -> [zr+224]
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 232], rax
                        .section         .rodata
.Lrkfn48:               .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn48]
                        lea              rsi, [rbp + 224]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 99
                        je               xchain41_n6_α
                        jmp              xchain41_n5_α
xchain41_n4_β:
                        jmp              xchain41_n6_α
# IR_ASSIGN gva
xchain41_n5_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        mov              qword ptr [1879052304], rax
                        mov              qword ptr [1879052312], rdx
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        jmp              xchain41_n6_α
#                group          =
# IR_LIT_STRING
xchain41_n6_α:
                        mov              qword ptr [rbp + 352], 1
                        mov              rax, qword ptr [rip + .Lx50_0]
                        mov              qword ptr [rbp + 360], rax
                        jmp              xchain41_n7_α
.Lx50_0:
                        .quad            .Lx50_0_s
.Lx50_0_s:
                        .string          "PAT$2"
xchain41_n7_α:
# BOX IR_CALL SNO$MKPAT(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+352] -> [zr+320]
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 328], rax
                        .section         .rodata
.Lrkfn52:               .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn52]
                        lea              rsi, [rbp + 320]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              eax, 99
                        je               xchain41_n9_α
                        jmp              xchain41_n8_α
xchain41_n7_β:
                        jmp              xchain41_n9_α
# IR_ASSIGN gva
xchain41_n8_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        mov              qword ptr [1879052320], rax
                        mov              qword ptr [1879052328], rdx
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        jmp              xchain41_n9_α
#                treebank       =
# IR_LIT_STRING
xchain41_n9_α:
                        mov              qword ptr [rbp + 448], 1
                        mov              rax, qword ptr [rip + .Lx54_0]
                        mov              qword ptr [rbp + 456], rax
                        jmp              xchain41_n10_α
.Lx54_0:
                        .quad            .Lx54_0_s
.Lx54_0_s:
                        .string          "PAT$3"
xchain41_n10_α:
# BOX IR_CALL SNO$MKPAT(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+448] -> [zr+416]
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 424], rax
                        .section         .rodata
.Lrkfn56:               .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn56]
                        lea              rsi, [rbp + 416]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 99
                        je               xchain41_n12_α
                        jmp              xchain41_n11_α
xchain41_n10_β:
                        jmp              xchain41_n12_α
# IR_ASSIGN gva
xchain41_n11_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              rdx, qword ptr [rbp + 408]
                        mov              qword ptr [1879052336], rax
                        mov              qword ptr [1879052344], rdx
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        jmp              xchain41_n12_α
#                 &TRIM          =  0
# IR_LIT_STRING
xchain41_n12_α:
                        mov              qword ptr [rbp + 544], 1
                        mov              rax, qword ptr [rip + .Lx58_0]
                        mov              qword ptr [rbp + 552], rax
                        jmp              xchain41_n13_α
.Lx58_0:
                        .quad            .Lx58_0_s
.Lx58_0_s:
                        .string          "TRIM"
# IR_LIT_INTEGER
xchain41_n13_α:
                        mov              qword ptr [rbp + 576], 6
                        mov              rax, qword ptr [rip + .Lx59_0]
                        mov              qword ptr [rbp + 584], rax
                        jmp              xchain41_n14_α
.Lx59_0:
                        .quad            0
xchain41_n14_α:
# BOX IR_CALL SNO$KWSET(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+544] -> [zr+496]
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 504], rax
# marshal arg1 = producer-box slot [zr+576] -> [zr+512]
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 520], rax
                        .section         .rodata
.Lrkfn61:               .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn61]
                        lea              rsi, [rbp + 496]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              eax, 99
                        je               xchain41_n15_α
                        jmp              xchain41_n15_α
xchain41_n14_β:
                        jmp              xchain41_n15_α
#                INPUT(.INPUT, 9, '[-f0 -r1000000]')
# IR_LIT_STRING
xchain41_n15_α:
                        mov              qword ptr [rbp + 736], 1
                        mov              rax, qword ptr [rip + .Lx62_0]
                        mov              qword ptr [rbp + 744], rax
                        jmp              xchain41_n16_α
.Lx62_0:
                        .quad            .Lx62_0_s
.Lx62_0_s:
                        .string          "INPUT"
xchain41_n16_α:
# BOX IR_CALL SNO$NAME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+736] -> [zr+704]
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 712], rax
                        .section         .rodata
.Lrkfn64:               .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn64]
                        lea              rsi, [rbp + 704]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              eax, 99
                        je               xchain41_n18_α
                        jmp              xchain41_n17_α
xchain41_n16_β:
                        jmp              xchain41_n18_α
# IR_LIT_INTEGER
xchain41_n17_α:
                        mov              qword ptr [rbp + 768], 6
                        mov              rax, qword ptr [rip + .Lx65_0]
                        mov              qword ptr [rbp + 776], rax
                        jmp              xchain41_n19_α
.Lx65_0:
                        .quad            9
#                src            =  INPUT                      :F(main_fail)
# IR_VAR
xchain41_n18_α:
                        mov              rdi, qword ptr [rip + .Lx66_0]
                        call             NV_GET_fn@PLT
                        cmp              eax, 99
                        je               xchain41_n21_α
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                        jmp              xchain41_n20_α
.Lx66_0:
                        .quad            .Lx66_0_s
.Lx66_0_s:
                        .string          "INPUT"
# IR_LIT_STRING
xchain41_n19_α:
                        mov              qword ptr [rbp + 800], 1
                        mov              rax, qword ptr [rip + .Lx67_0]
                        mov              qword ptr [rbp + 808], rax
                        jmp              xchain41_n22_α
.Lx67_0:
                        .quad            .Lx67_0_s
.Lx67_0_s:
                        .string          "[-f0 -r1000000]"
# IR_ASSIGN gva
xchain41_n20_α:
                        mov              rax, qword ptr [rbp + 848]
                        mov              rdx, qword ptr [rbp + 856]
                        mov              qword ptr [1879052352], rax
                        mov              qword ptr [1879052360], rdx
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        jmp              xchain41_n23_α
# main_fail      OUTPUT         =  'Pattern match failed'
# IR_LIT_STRING
xchain41_n21_α:
                        mov              qword ptr [rbp + 1168], 1
                        mov              rax, qword ptr [rip + .Lx69_0]
                        mov              qword ptr [rbp + 1176], rax
                        jmp              xchain41_n24_α
.Lx69_0:
                        .quad            .Lx69_0_s
.Lx69_0_s:
                        .string          "Pattern match failed"
xchain41_n22_α:
# BOX CALL INPUT(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [zr+688] -> [zr+624]
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 632], rax
# marshal arg1 = producer-box slot [zr+768] -> [zr+640]
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 648], rax
# marshal arg2 = producer-box slot [zr+800] -> [zr+656]
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 664], rax
                        .section         .rodata
.Lbynamefn47:           .string          "INPUT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn47]
                        lea              rsi, [rbp + 624]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        cmp              eax, 99
                        je               xchain41_n18_α
                        jmp              xchain41_n18_α
xchain41_n22_β:
                        jmp              xchain41_n18_α
#                src            treebank                      :F(main_fail)
# IR_VAR
xchain41_n23_α:
                        mov              rax, qword ptr [1879052352]
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                        jmp              xchain41_n25_α
# IR_ASSIGN global
xchain41_n24_α:
                        mov              rsi, qword ptr [rbp + 1168]
                        mov              rdx, qword ptr [rbp + 1176]
                        mov              rdi, qword ptr [rip + .Lx72_0]
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                        jmp              main_γ
.Lx72_0:
                        .quad            .Lx72_0_s
.Lx72_0_s:
                        .string          "OUTPUT"
# IR_MATCH_HEAD
xchain41_n25_α:
                        mov              qword ptr [rbp + 936], rbp
                        mov              rdi, qword ptr [rbp + 960]
                        mov              rsi, qword ptr [rbp + 968]
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [rbp + 928], r12
                        mov              qword ptr [rbp + 912], rsp
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 904], rax
                        mov              dword ptr [rbp + 896], 0
.Lx74_0:
                        mov              r14d, dword ptr [rbp + 896]
                        jmp              xchain41_n26_α
xchain41_n25_β:
                        add              dword ptr [rbp + 896], 1
                        mov              eax, dword ptr [rbp + 896]
                        cmp              eax, r15d
                        jg               .Lx74_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                        jne              .Lx74_1
                        jmp              .Lx74_0
.Lx74_1:
                        mov              rax, qword ptr [rbp + 904]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 912]
                        mov              r12, qword ptr [rbp + 928]
                        mov              rbp, qword ptr [rbp + 936]
                        jmp              xchain41_n21_α
# IR_MATCH_DEFER (ZS-2 jmp-entry)
xchain41_n26_α:
                        lea              rsi, [rip + g_sno_defer_cells+48]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                        jne              .Lx75_11
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        cmp              eax, 3
                        jne              .Lx75_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                        jne              .Lx75_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                        jmp              .Lx75_10
.Lx75_9:
                        xor              eax, eax
.Lx75_10:
                        lea              rsi, [rip + g_sno_defer_cells+48]
                        mov              qword ptr [rsi + 0], rax
.Lx75_11:
                        test             rax, rax
                        jz               .Lx75_0
                        mov              r8d, 1
                        lea              rcx, [rip + .Lx75_4]
                        lea              rdx, [rip + .Lx75_5]
                        jmp              rax
.Lx75_4:
                        lea              rcx, [rip + g_scan_hit_start]
                        mov              rax, qword ptr [rcx]
                        mov              dword ptr [rbp + 896], eax
                        jmp              xchain41_n27_α
.Lx75_5:
                        jmp              xchain41_n25_β
.Lx75_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S3]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx75_2:
                        test             rax, rax
                        je               .Lx75_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx75_7]
                        lea              rdx, [rip + .Lx75_8]
                        jmp              rax
.Lx75_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx75_2
.Lx75_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx75_2
.Lx75_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                        js               xchain41_n25_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx75_6]
                        sub              rsp, 8
                        push             rax
                        jmp              xchain41_n27_α
.Lx75_6:
                        add              rsp, 16
                        jmp              xchain41_n25_β
xchain41_n26_β:
                        jmp              qword ptr [rsp]
# IR_MATCH_RELEASE
xchain41_n27_α:
                        mov              rax, qword ptr [rbp + 904]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 912]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rsp + 960]
                        mov              rsi, r12
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx77_1:
                        test             rax, rax
                        je               .Lx77_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx77_3]
                        lea              rdx, [rip + .Lx77_4]
                        jmp              rax
.Lx77_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                        jmp              .Lx77_1
.Lx77_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                        jmp              .Lx77_1
.Lx77_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + 928]
                        mov              rbp, qword ptr [rbp + 936]
                        jmp              xchain41_n28_α
#                OUTPUT         =  'matched bytes=' SIZE(src) :(END)
# IR_LIT_STRING
xchain41_n28_α:
                        mov              qword ptr [rbp + 1040], 1
                        mov              rax, qword ptr [rip + .Lx78_0]
                        mov              qword ptr [rbp + 1048], rax
                        jmp              xchain41_n29_α
.Lx78_0:
                        .quad            .Lx78_0_s
.Lx78_0_s:
                        .string          "matched bytes="
# IR_VAR
xchain41_n29_α:
                        mov              rax, qword ptr [1879052352]
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                        jmp              xchain41_n30_α
xchain41_n30_α:
# BOX IR_CALL SIZE(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1120] -> [zr+1088]
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1096], rax
                        .section         .rodata
.Lrkfn81:               .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn81]
                        lea              rsi, [rbp + 1088]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                        cmp              eax, 99
                        je               main_γ
                        jmp              xchain41_n31_α
xchain41_n30_β:
                        jmp              main_γ
xchain41_n31_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 1040]
                        mov              rsi, qword ptr [rbp + 1048]
                        mov              rdx, qword ptr [rbp + 1072]
                        mov              rcx, qword ptr [rbp + 1080]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                        jmp              xchain41_n32_α
# IR_ASSIGN global
xchain41_n32_α:
                        mov              rsi, qword ptr [rbp + 1008]
                        mov              rdx, qword ptr [rbp + 1016]
                        mov              rdi, qword ptr [rip + .Lx83_0]
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                        jmp              main_γ
.Lx83_0:
                        .quad            .Lx83_0_s
.Lx83_0_s:
                        .string          "OUTPUT"
main_β:
jmp main_ω
main_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [rbp + 1208]
mov rbp, [rsp + 65536]
add rsp, 65544
ret
main_ω:
mov rsp, qword ptr [rbp + 1208]
mov dword ptr [rsp+0], 99
mov dword ptr [rsp+4], 0
mov qword ptr [rsp+8], 0
mov eax, 99
xor edx, edx
mov rbp, [rsp + 65536]
add rsp, 65544
ret
.section .rodata
.S0: .string "word"
.S1: .string "delim"
.S2: .string "group"
.S3: .string "treebank"
.text
.section .rodata
.C0:
 .byte 0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0
 .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
 .byte 1,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0
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
 .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
.text
