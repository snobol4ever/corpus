                        .intel_syntax    noprefix
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
# IR_MATCH_ANY
xchain0_n0_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                        jge              proc_PAT$0_scanfail
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C0]
                        cmp              byte ptr [rdi+rsi], 0
                        je               proc_PAT$0_scanfail
                        add              r14d, 1
                        jmp              proc_PAT$0_scanhit
xchain0_n0_β:
                        sub              r14d, 1
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
proc_PAT$1_attempt:
proc_PAT$1_α_body:
lea rax, [rip + xchain3_n0_β]
mov qword ptr [rbp + 32], rax
# IR_MATCH_SPAN
xchain3_n0_α:
                        sub              rsp, 16
                        lea              rdi, [rip + .C1]
                        movsxd           rcx, r14d
.Lx5_0:
                        cmp              ecx, r15d
                        jge              .Lx5_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                        je               .Lx5_1
                        add              ecx, 1
                        cmp              ecx, r15d
                        jge              .Lx5_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                        je               .Lx5_1
                        add              ecx, 1
                        cmp              ecx, r15d
                        jge              .Lx5_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                        je               .Lx5_1
                        add              ecx, 1
                        cmp              ecx, r15d
                        jge              .Lx5_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                        je               .Lx5_1
                        add              ecx, 1
                        jmp              .Lx5_0
.Lx5_1:
                        cmp              ecx, r14d
                        jg               .Lx5_240
                        add              rsp, 16
                        jmp              proc_PAT$1_scanfail
.Lx5_240:
                        mov              dword ptr [rsp + 4], r14d
                        mov              r14d, ecx
                        jmp              proc_PAT$1_scanhit
xchain3_n0_β:
xchain3_n0_β:
                        mov              r14d, dword ptr [rsp + 4]
                        add              rsp, 16
                        jmp              proc_PAT$1_scanfail
proc_PAT$1_scanhit:
cmp qword ptr [rbp + 64], 1
jne 7f
mov ecx, dword ptr [rbp + 56]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$1_γ
proc_PAT$1_scanfail:
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
jmp proc_PAT$1_attempt
8:
jmp proc_PAT$1_ω
proc_PAT$1_res:
add rsp, 8
pop rbp
proc_PAT$1_β:
jmp qword ptr [rbp + 32]
proc_PAT$1_γ:
push rbp
lea rax, [rip + proc_PAT$1_res]
push rax
mov rax, [rbp + 72]
mov rbp, [rbp + 88]
jmp rax
proc_PAT$1_ω:
mov rax, [rbp + 80]
lea rsp, [rbp + 96]
mov rbp, [rbp + 88]
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
lea rax, [rip + xchain6_n0_β]
mov qword ptr [rbp + 112], rax
# IR_MATCH_ALT_NARY
xchain6_n0_α:
                        mov              dword ptr [rbp + 16], r14d
                        mov              dword ptr [rbp + 20], 0
                        jmp              xchain6_n1_α
xchain6_n0_as:
                        jmp              proc_PAT$2_γ
xchain6_n0_β:
                        mov              eax, dword ptr [rbp + 20]
                        cmp              eax, 0
                        je               xchain6_n1_β
                        cmp              eax, 1
                        je               xchain6_n2_β
                        jmp              xchain6_n3_β
xchain6_n0_af:
                        add              dword ptr [rbp + 20], 1
                        mov              r14d, dword ptr [rbp + 16]
                        mov              eax, dword ptr [rbp + 20]
                        cmp              eax, 1
                        je               xchain6_n2_α
                        cmp              eax, 2
                        je               xchain6_n3_α
                        jmp              proc_PAT$2_ω
# IR_MATCH_DEFER (ZS-2 jmp-entry)
xchain6_n1_α:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                        jne              .Lx9_11
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 3
                        jne              .Lx9_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                        jne              .Lx9_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                        jmp              .Lx9_10
.Lx9_9:
                        xor              eax, eax
.Lx9_10:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              qword ptr [rsi + 0], rax
.Lx9_11:
                        test             rax, rax
                        jz               .Lx9_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx9_4]
                        lea              rdx, [rip + .Lx9_5]
                        jmp              rax
.Lx9_4:
                        jmp              xchain6_n0_as
.Lx9_5:
                        jmp              xchain6_n0_af
.Lx9_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx9_2:
                        test             rax, rax
                        je               .Lx9_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx9_7]
                        lea              rdx, [rip + .Lx9_8]
                        jmp              rax
.Lx9_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx9_2
.Lx9_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx9_2
.Lx9_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                        js               xchain6_n0_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx9_6]
                        sub              rsp, 8
                        push             rax
                        jmp              xchain6_n0_as
.Lx9_6:
                        add              rsp, 16
                        jmp              xchain6_n0_af
xchain6_n1_β:
                        jmp              qword ptr [rsp]
# IR_MATCH_DEFER (ZS-2 jmp-entry)
xchain6_n2_α:
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                        jne              .Lx10_11
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        cmp              eax, 3
                        jne              .Lx10_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                        jne              .Lx10_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                        jmp              .Lx10_10
.Lx10_9:
                        xor              eax, eax
.Lx10_10:
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              qword ptr [rsi + 0], rax
.Lx10_11:
                        test             rax, rax
                        jz               .Lx10_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx10_4]
                        lea              rdx, [rip + .Lx10_5]
                        jmp              rax
.Lx10_4:
                        jmp              xchain6_n0_as
.Lx10_5:
                        jmp              xchain6_n0_af
.Lx10_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx10_2:
                        test             rax, rax
                        je               .Lx10_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx10_7]
                        lea              rdx, [rip + .Lx10_8]
                        jmp              rax
.Lx10_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx10_2
.Lx10_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx10_2
.Lx10_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                        js               xchain6_n0_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx10_6]
                        sub              rsp, 8
                        push             rax
                        jmp              xchain6_n0_as
.Lx10_6:
                        add              rsp, 16
                        jmp              xchain6_n0_af
xchain6_n2_β:
                        jmp              qword ptr [rsp]
# IR_MATCH_SEQ_NARY (SPD SEQ-STATIC: zero-counter, sigma/phi statically wired)
xchain6_n3_α:
                        mov              dword ptr [rbp + 64], r14d
                        jmp              xchain6_n4_α
xchain6_n3_as:
                        jmp              xchain6_n0_as
xchain6_n3_β:
                        jmp              xchain6_n6_β
xchain6_n3_af:
                        jmp              xchain6_n0_af
# IR_MATCH_LIT
xchain6_n4_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                        jg               xchain6_n0_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 40
                        jne              xchain6_n0_af
                        add              r14d, 1
                        jmp              xchain6_n5_α
xchain6_n4_β:
                        sub              r14d, 1
                        jmp              xchain6_n0_af
# IR_MATCH_DEFER (ZS-2 jmp-entry)
xchain6_n5_α:
                        lea              rsi, [rip + g_sno_defer_cells+16]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                        jne              .Lx15_11
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        cmp              eax, 3
                        jne              .Lx15_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                        jne              .Lx15_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                        jmp              .Lx15_10
.Lx15_9:
                        xor              eax, eax
.Lx15_10:
                        lea              rsi, [rip + g_sno_defer_cells+16]
                        mov              qword ptr [rsi + 0], rax
.Lx15_11:
                        test             rax, rax
                        jz               .Lx15_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx15_4]
                        lea              rdx, [rip + .Lx15_5]
                        jmp              rax
.Lx15_4:
                        jmp              xchain6_n6_α
.Lx15_5:
                        jmp              xchain6_n4_β
.Lx15_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S2]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx15_2:
                        test             rax, rax
                        je               .Lx15_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx15_7]
                        lea              rdx, [rip + .Lx15_8]
                        jmp              rax
.Lx15_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx15_2
.Lx15_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx15_2
.Lx15_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                        js               xchain6_n4_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx15_6]
                        sub              rsp, 8
                        push             rax
                        jmp              xchain6_n6_α
.Lx15_6:
                        add              rsp, 16
                        jmp              xchain6_n4_β
xchain6_n5_β:
                        jmp              qword ptr [rsp]
# IR_MATCH_LIT
xchain6_n6_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                        jg               xchain6_n5_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 41
                        jne              xchain6_n5_β
                        add              r14d, 1
                        jmp              xchain6_n0_as
xchain6_n6_β:
                        sub              r14d, 1
                        jmp              xchain6_n5_β
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
proc_PAT$3_attempt:
proc_PAT$3_α_body:
lea rax, [rip + xchain18_n0_β]
mov qword ptr [rbp + 128], rax
# IR_MATCH_ALT_NARY
xchain18_n0_α:
                        mov              dword ptr [rbp + 16], r14d
                        mov              dword ptr [rbp + 20], 0
                        jmp              xchain18_n1_α
xchain18_n0_as:
                        jmp              proc_PAT$3_γ
xchain18_n0_β:
                        mov              eax, dword ptr [rbp + 20]
                        cmp              eax, 0
                        je               xchain18_n1_β
                        cmp              eax, 1
                        je               xchain18_n2_β
                        jmp              xchain18_n3_β
xchain18_n0_af:
                        add              dword ptr [rbp + 20], 1
                        mov              r14d, dword ptr [rbp + 16]
                        mov              eax, dword ptr [rbp + 20]
                        cmp              eax, 1
                        je               xchain18_n2_α
                        cmp              eax, 2
                        je               xchain18_n3_α
                        jmp              proc_PAT$3_ω
# IR_MATCH_DEFER (ZS-2 jmp-entry)
xchain18_n1_α:
                        lea              rsi, [rip + g_sno_defer_cells+24]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                        jne              .Lx21_11
                        mov              rax, qword ptr [1879052320]
                        mov              rdx, qword ptr [1879052328]
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
                        lea              rsi, [rip + g_sno_defer_cells+24]
                        mov              qword ptr [rsi + 0], rax
.Lx21_11:
                        test             rax, rax
                        jz               .Lx21_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx21_4]
                        lea              rdx, [rip + .Lx21_5]
                        jmp              rax
.Lx21_4:
                        jmp              xchain18_n0_as
.Lx21_5:
                        jmp              xchain18_n0_af
.Lx21_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S3]
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
                        js               xchain18_n0_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx21_6]
                        sub              rsp, 8
                        push             rax
                        jmp              xchain18_n0_as
.Lx21_6:
                        add              rsp, 16
                        jmp              xchain18_n0_af
xchain18_n1_β:
                        jmp              qword ptr [rsp]
# IR_MATCH_SEQ_NARY (SPD SEQ-STATIC: zero-counter, sigma/phi statically wired)
xchain18_n2_α:
                        mov              dword ptr [rbp + 48], r14d
                        jmp              xchain18_n4_α
xchain18_n2_as:
                        jmp              xchain18_n0_as
xchain18_n2_β:
                        jmp              xchain18_n5_β
xchain18_n2_af:
                        jmp              xchain18_n0_af
# IR_MATCH_SEQ_NARY (SPD SEQ-STATIC: zero-counter, sigma/phi statically wired)
xchain18_n3_α:
                        mov              dword ptr [rbp + 96], r14d
                        jmp              xchain18_n6_α
xchain18_n3_as:
                        jmp              xchain18_n0_as
xchain18_n3_β:
                        jmp              xchain18_n7_β
xchain18_n3_af:
                        jmp              xchain18_n0_af
# IR_MATCH_LIT
xchain18_n4_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                        jg               xchain18_n0_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 43
                        jne              xchain18_n0_af
                        add              r14d, 1
                        jmp              xchain18_n5_α
xchain18_n4_β:
                        sub              r14d, 1
                        jmp              xchain18_n0_af
# IR_MATCH_DEFER (ZS-2 jmp-entry)
xchain18_n5_α:
                        lea              rsi, [rip + g_sno_defer_cells+32]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                        jne              .Lx28_11
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        cmp              eax, 3
                        jne              .Lx28_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                        jne              .Lx28_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                        jmp              .Lx28_10
.Lx28_9:
                        xor              eax, eax
.Lx28_10:
                        lea              rsi, [rip + g_sno_defer_cells+32]
                        mov              qword ptr [rsi + 0], rax
.Lx28_11:
                        test             rax, rax
                        jz               .Lx28_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx28_4]
                        lea              rdx, [rip + .Lx28_5]
                        jmp              rax
.Lx28_4:
                        jmp              xchain18_n0_as
.Lx28_5:
                        jmp              xchain18_n4_β
.Lx28_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S4]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx28_2:
                        test             rax, rax
                        je               .Lx28_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx28_7]
                        lea              rdx, [rip + .Lx28_8]
                        jmp              rax
.Lx28_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx28_2
.Lx28_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx28_2
.Lx28_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                        js               xchain18_n4_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx28_6]
                        sub              rsp, 8
                        push             rax
                        jmp              xchain18_n0_as
.Lx28_6:
                        add              rsp, 16
                        jmp              xchain18_n4_β
xchain18_n5_β:
                        jmp              qword ptr [rsp]
# IR_MATCH_LIT
xchain18_n6_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                        jg               xchain18_n0_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 45
                        jne              xchain18_n0_af
                        add              r14d, 1
                        jmp              xchain18_n7_α
xchain18_n6_β:
                        sub              r14d, 1
                        jmp              xchain18_n0_af
# IR_MATCH_DEFER (ZS-2 jmp-entry)
xchain18_n7_α:
                        lea              rsi, [rip + g_sno_defer_cells+40]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                        jne              .Lx31_11
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        cmp              eax, 3
                        jne              .Lx31_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                        jne              .Lx31_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                        jmp              .Lx31_10
.Lx31_9:
                        xor              eax, eax
.Lx31_10:
                        lea              rsi, [rip + g_sno_defer_cells+40]
                        mov              qword ptr [rsi + 0], rax
.Lx31_11:
                        test             rax, rax
                        jz               .Lx31_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx31_4]
                        lea              rdx, [rip + .Lx31_5]
                        jmp              rax
.Lx31_4:
                        jmp              xchain18_n0_as
.Lx31_5:
                        jmp              xchain18_n6_β
.Lx31_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S4]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx31_2:
                        test             rax, rax
                        je               .Lx31_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx31_7]
                        lea              rdx, [rip + .Lx31_8]
                        jmp              rax
.Lx31_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx31_2
.Lx31_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx31_2
.Lx31_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                        js               xchain18_n6_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx31_6]
                        sub              rsp, 8
                        push             rax
                        jmp              xchain18_n0_as
.Lx31_6:
                        add              rsp, 16
                        jmp              xchain18_n6_β
xchain18_n7_β:
                        jmp              qword ptr [rsp]
proc_PAT$3_scanhit:
cmp qword ptr [rbp + 160], 1
jne 7f
mov ecx, dword ptr [rbp + 152]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$3_γ
proc_PAT$3_scanfail:
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
jmp proc_PAT$3_attempt
8:
jmp proc_PAT$3_ω
proc_PAT$3_res:
add rsp, 8
pop rbp
proc_PAT$3_β:
jmp qword ptr [rbp + 128]
proc_PAT$3_γ:
push rbp
lea rax, [rip + proc_PAT$3_res]
push rax
mov rax, [rbp + 168]
mov rbp, [rbp + 184]
jmp rax
proc_PAT$3_ω:
mov rax, [rbp + 176]
lea rsp, [rbp + 192]
mov rbp, [rbp + 184]
jmp rax
  .globl proc_PAT$4_α
proc_PAT$4_α:
#=======================================================================================================================
    .global proc_PAT$4_α
    .global proc_PAT$4_β
    .global proc_PAT$4_γ
    .global proc_PAT$4_ω
  sub rsp, 224
  mov [rsp + 200], rcx
  mov [rsp + 208], rdx
  mov [rsp + 216], rbp
  mov rbp, rsp
  mov qword ptr [rsp], 0
  mov qword ptr [rsp + 8], 0
  mov qword ptr [rsp + 160], 0
  mov qword ptr [rsp + 168], 0
  mov qword ptr [rsp + 176], 0
  mov qword ptr [rsp + 184], rsp
mov qword ptr [rbp + 192], r8
mov dword ptr [rbp + 184], r14d
proc_PAT$4_attempt:
proc_PAT$4_α_body:
lea rax, [rip + xchain32_n0_β]
mov qword ptr [rbp + 160], rax
# IR_MATCH_ALT_NARY
xchain32_n0_α:
                        mov              dword ptr [rbp + 16], r14d
                        mov              dword ptr [rbp + 20], 0
                        jmp              xchain32_n1_α
xchain32_n0_as:
                        jmp              proc_PAT$4_γ
xchain32_n0_β:
                        mov              eax, dword ptr [rbp + 20]
                        cmp              eax, 0
                        je               xchain32_n1_β
                        cmp              eax, 1
                        je               xchain32_n2_β
                        jmp              xchain32_n3_β
xchain32_n0_af:
                        add              dword ptr [rbp + 20], 1
                        mov              r14d, dword ptr [rbp + 16]
                        mov              eax, dword ptr [rbp + 20]
                        cmp              eax, 1
                        je               xchain32_n2_α
                        cmp              eax, 2
                        je               xchain32_n3_α
                        jmp              proc_PAT$4_ω
# IR_MATCH_SEQ_NARY (SPD SEQ-STATIC: zero-counter, sigma/phi statically wired)
xchain32_n1_α:
                        mov              dword ptr [rbp + 32], r14d
                        jmp              xchain32_n4_α
xchain32_n1_as:
                        jmp              xchain32_n0_as
xchain32_n1_β:
                        jmp              xchain32_n6_β
xchain32_n1_af:
                        jmp              xchain32_n0_af
# IR_MATCH_SEQ_NARY (SPD SEQ-STATIC: zero-counter, sigma/phi statically wired)
xchain32_n2_α:
                        mov              dword ptr [rbp + 96], r14d
                        jmp              xchain32_n7_α
xchain32_n2_as:
                        jmp              xchain32_n0_as
xchain32_n2_β:
                        jmp              xchain32_n9_β
xchain32_n2_af:
                        jmp              xchain32_n0_af
# IR_MATCH_DEFER (ZS-2 jmp-entry)
xchain32_n3_α:
                        lea              rsi, [rip + g_sno_defer_cells+48]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                        jne              .Lx39_11
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        cmp              eax, 3
                        jne              .Lx39_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                        jne              .Lx39_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                        jmp              .Lx39_10
.Lx39_9:
                        xor              eax, eax
.Lx39_10:
                        lea              rsi, [rip + g_sno_defer_cells+48]
                        mov              qword ptr [rsi + 0], rax
.Lx39_11:
                        test             rax, rax
                        jz               .Lx39_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx39_4]
                        lea              rdx, [rip + .Lx39_5]
                        jmp              rax
.Lx39_4:
                        jmp              xchain32_n0_as
.Lx39_5:
                        jmp              xchain32_n0_af
.Lx39_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S4]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx39_2:
                        test             rax, rax
                        je               .Lx39_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx39_7]
                        lea              rdx, [rip + .Lx39_8]
                        jmp              rax
.Lx39_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx39_2
.Lx39_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx39_2
.Lx39_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                        js               xchain32_n0_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx39_6]
                        sub              rsp, 8
                        push             rax
                        jmp              xchain32_n0_as
.Lx39_6:
                        add              rsp, 16
                        jmp              xchain32_n0_af
xchain32_n3_β:
                        jmp              qword ptr [rsp]
# IR_MATCH_DEFER (ZS-2 jmp-entry)
xchain32_n4_α:
                        lea              rsi, [rip + g_sno_defer_cells+56]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                        jne              .Lx40_11
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
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
                        lea              rsi, [rip + g_sno_defer_cells+56]
                        mov              qword ptr [rsi + 0], rax
.Lx40_11:
                        test             rax, rax
                        jz               .Lx40_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx40_4]
                        lea              rdx, [rip + .Lx40_5]
                        jmp              rax
.Lx40_4:
                        jmp              xchain32_n5_α
.Lx40_5:
                        jmp              xchain32_n0_af
.Lx40_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S4]
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
                        js               xchain32_n0_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx40_6]
                        sub              rsp, 8
                        push             rax
                        jmp              xchain32_n5_α
.Lx40_6:
                        add              rsp, 16
                        jmp              xchain32_n0_af
xchain32_n4_β:
                        jmp              qword ptr [rsp]
# IR_MATCH_LIT
xchain32_n5_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                        jg               xchain32_n4_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 42
                        jne              xchain32_n4_β
                        add              r14d, 1
                        jmp              xchain32_n6_α
xchain32_n5_β:
                        sub              r14d, 1
                        jmp              xchain32_n4_β
# IR_MATCH_DEFER (ZS-2 jmp-entry)
xchain32_n6_α:
                        lea              rsi, [rip + g_sno_defer_cells+64]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                        jne              .Lx43_11
                        mov              rax, qword ptr [1879052352]
                        mov              rdx, qword ptr [1879052360]
                        cmp              eax, 3
                        jne              .Lx43_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                        jne              .Lx43_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                        jmp              .Lx43_10
.Lx43_9:
                        xor              eax, eax
.Lx43_10:
                        lea              rsi, [rip + g_sno_defer_cells+64]
                        mov              qword ptr [rsi + 0], rax
.Lx43_11:
                        test             rax, rax
                        jz               .Lx43_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx43_4]
                        lea              rdx, [rip + .Lx43_5]
                        jmp              rax
.Lx43_4:
                        jmp              xchain32_n0_as
.Lx43_5:
                        jmp              xchain32_n5_β
.Lx43_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S5]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx43_2:
                        test             rax, rax
                        je               .Lx43_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx43_7]
                        lea              rdx, [rip + .Lx43_8]
                        jmp              rax
.Lx43_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx43_2
.Lx43_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx43_2
.Lx43_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                        js               xchain32_n5_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx43_6]
                        sub              rsp, 8
                        push             rax
                        jmp              xchain32_n0_as
.Lx43_6:
                        add              rsp, 16
                        jmp              xchain32_n5_β
xchain32_n6_β:
                        jmp              qword ptr [rsp]
# IR_MATCH_DEFER (ZS-2 jmp-entry)
xchain32_n7_α:
                        lea              rsi, [rip + g_sno_defer_cells+72]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                        jne              .Lx44_11
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        cmp              eax, 3
                        jne              .Lx44_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                        jne              .Lx44_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                        jmp              .Lx44_10
.Lx44_9:
                        xor              eax, eax
.Lx44_10:
                        lea              rsi, [rip + g_sno_defer_cells+72]
                        mov              qword ptr [rsi + 0], rax
.Lx44_11:
                        test             rax, rax
                        jz               .Lx44_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx44_4]
                        lea              rdx, [rip + .Lx44_5]
                        jmp              rax
.Lx44_4:
                        jmp              xchain32_n8_α
.Lx44_5:
                        jmp              xchain32_n0_af
.Lx44_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S4]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx44_2:
                        test             rax, rax
                        je               .Lx44_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx44_7]
                        lea              rdx, [rip + .Lx44_8]
                        jmp              rax
.Lx44_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx44_2
.Lx44_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx44_2
.Lx44_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                        js               xchain32_n0_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx44_6]
                        sub              rsp, 8
                        push             rax
                        jmp              xchain32_n8_α
.Lx44_6:
                        add              rsp, 16
                        jmp              xchain32_n0_af
xchain32_n7_β:
                        jmp              qword ptr [rsp]
# IR_MATCH_LIT
xchain32_n8_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                        jg               xchain32_n7_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 47
                        jne              xchain32_n7_β
                        add              r14d, 1
                        jmp              xchain32_n9_α
xchain32_n8_β:
                        sub              r14d, 1
                        jmp              xchain32_n7_β
# IR_MATCH_DEFER (ZS-2 jmp-entry)
xchain32_n9_α:
                        lea              rsi, [rip + g_sno_defer_cells+80]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                        jne              .Lx47_11
                        mov              rax, qword ptr [1879052352]
                        mov              rdx, qword ptr [1879052360]
                        cmp              eax, 3
                        jne              .Lx47_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                        jne              .Lx47_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                        jmp              .Lx47_10
.Lx47_9:
                        xor              eax, eax
.Lx47_10:
                        lea              rsi, [rip + g_sno_defer_cells+80]
                        mov              qword ptr [rsi + 0], rax
.Lx47_11:
                        test             rax, rax
                        jz               .Lx47_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx47_4]
                        lea              rdx, [rip + .Lx47_5]
                        jmp              rax
.Lx47_4:
                        jmp              xchain32_n0_as
.Lx47_5:
                        jmp              xchain32_n8_β
.Lx47_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S5]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx47_2:
                        test             rax, rax
                        je               .Lx47_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx47_7]
                        lea              rdx, [rip + .Lx47_8]
                        jmp              rax
.Lx47_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx47_2
.Lx47_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx47_2
.Lx47_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                        js               xchain32_n8_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx47_6]
                        sub              rsp, 8
                        push             rax
                        jmp              xchain32_n0_as
.Lx47_6:
                        add              rsp, 16
                        jmp              xchain32_n8_β
xchain32_n9_β:
                        jmp              qword ptr [rsp]
proc_PAT$4_scanhit:
cmp qword ptr [rbp + 192], 1
jne 7f
mov ecx, dword ptr [rbp + 184]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$4_γ
proc_PAT$4_scanfail:
cmp qword ptr [rbp + 192], 1
jne 8f
mov eax, dword ptr [rbp + 184]
inc eax
cmp eax, r15d
jg 8f
lea rcx, [rip + g_anchor]
cmp qword ptr [rcx], 0
jne 8f
mov dword ptr [rbp + 184], eax
mov r14d, eax
mov rsp, rbp
jmp proc_PAT$4_attempt
8:
jmp proc_PAT$4_ω
proc_PAT$4_res:
add rsp, 8
pop rbp
proc_PAT$4_β:
jmp qword ptr [rbp + 160]
proc_PAT$4_γ:
push rbp
lea rax, [rip + proc_PAT$4_res]
push rax
mov rax, [rbp + 200]
mov rbp, [rbp + 216]
jmp rax
proc_PAT$4_ω:
mov rax, [rbp + 208]
lea rsp, [rbp + 224]
mov rbp, [rbp + 216]
jmp rax
  .globl proc_PAT$5_α
proc_PAT$5_α:
#=======================================================================================================================
    .global proc_PAT$5_α
    .global proc_PAT$5_β
    .global proc_PAT$5_γ
    .global proc_PAT$5_ω
  sub rsp, 224
  mov [rsp + 200], rcx
  mov [rsp + 208], rdx
  mov [rsp + 216], rbp
  mov rbp, rsp
  mov qword ptr [rsp], 0
  mov qword ptr [rsp + 8], 0
  mov qword ptr [rsp + 160], 0
  mov qword ptr [rsp + 168], 0
  mov qword ptr [rsp + 176], 0
  mov qword ptr [rsp + 184], rsp
mov qword ptr [rbp + 192], r8
mov dword ptr [rbp + 184], r14d
proc_PAT$5_attempt:
proc_PAT$5_α_body:
lea rax, [rip + xchain48_n0_β]
mov qword ptr [rbp + 160], rax
# IR_MATCH_ALT_NARY
xchain48_n0_α:
                        mov              dword ptr [rbp + 16], r14d
                        mov              dword ptr [rbp + 20], 0
                        jmp              xchain48_n1_α
xchain48_n0_as:
                        jmp              proc_PAT$5_γ
xchain48_n0_β:
                        mov              eax, dword ptr [rbp + 20]
                        cmp              eax, 0
                        je               xchain48_n1_β
                        cmp              eax, 1
                        je               xchain48_n2_β
                        jmp              xchain48_n3_β
xchain48_n0_af:
                        add              dword ptr [rbp + 20], 1
                        mov              r14d, dword ptr [rbp + 16]
                        mov              eax, dword ptr [rbp + 20]
                        cmp              eax, 1
                        je               xchain48_n2_α
                        cmp              eax, 2
                        je               xchain48_n3_α
                        jmp              proc_PAT$5_ω
# IR_MATCH_SEQ_NARY (SPD SEQ-STATIC: zero-counter, sigma/phi statically wired)
xchain48_n1_α:
                        mov              dword ptr [rbp + 32], r14d
                        jmp              xchain48_n4_α
xchain48_n1_as:
                        jmp              xchain48_n0_as
xchain48_n1_β:
                        jmp              xchain48_n6_β
xchain48_n1_af:
                        jmp              xchain48_n0_af
# IR_MATCH_SEQ_NARY (SPD SEQ-STATIC: zero-counter, sigma/phi statically wired)
xchain48_n2_α:
                        mov              dword ptr [rbp + 96], r14d
                        jmp              xchain48_n7_α
xchain48_n2_as:
                        jmp              xchain48_n0_as
xchain48_n2_β:
                        jmp              xchain48_n9_β
xchain48_n2_af:
                        jmp              xchain48_n0_af
# IR_MATCH_DEFER (ZS-2 jmp-entry)
xchain48_n3_α:
                        lea              rsi, [rip + g_sno_defer_cells+88]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                        jne              .Lx55_11
                        mov              rax, qword ptr [1879052352]
                        mov              rdx, qword ptr [1879052360]
                        cmp              eax, 3
                        jne              .Lx55_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                        jne              .Lx55_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                        jmp              .Lx55_10
.Lx55_9:
                        xor              eax, eax
.Lx55_10:
                        lea              rsi, [rip + g_sno_defer_cells+88]
                        mov              qword ptr [rsi + 0], rax
.Lx55_11:
                        test             rax, rax
                        jz               .Lx55_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx55_4]
                        lea              rdx, [rip + .Lx55_5]
                        jmp              rax
.Lx55_4:
                        jmp              xchain48_n0_as
.Lx55_5:
                        jmp              xchain48_n0_af
.Lx55_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S5]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx55_2:
                        test             rax, rax
                        je               .Lx55_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx55_7]
                        lea              rdx, [rip + .Lx55_8]
                        jmp              rax
.Lx55_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx55_2
.Lx55_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx55_2
.Lx55_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                        js               xchain48_n0_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx55_6]
                        sub              rsp, 8
                        push             rax
                        jmp              xchain48_n0_as
.Lx55_6:
                        add              rsp, 16
                        jmp              xchain48_n0_af
xchain48_n3_β:
                        jmp              qword ptr [rsp]
# IR_MATCH_DEFER (ZS-2 jmp-entry)
xchain48_n4_α:
                        lea              rsi, [rip + g_sno_defer_cells+96]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                        jne              .Lx56_11
                        mov              rax, qword ptr [1879052352]
                        mov              rdx, qword ptr [1879052360]
                        cmp              eax, 3
                        jne              .Lx56_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                        jne              .Lx56_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                        jmp              .Lx56_10
.Lx56_9:
                        xor              eax, eax
.Lx56_10:
                        lea              rsi, [rip + g_sno_defer_cells+96]
                        mov              qword ptr [rsi + 0], rax
.Lx56_11:
                        test             rax, rax
                        jz               .Lx56_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx56_4]
                        lea              rdx, [rip + .Lx56_5]
                        jmp              rax
.Lx56_4:
                        jmp              xchain48_n5_α
.Lx56_5:
                        jmp              xchain48_n0_af
.Lx56_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S5]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx56_2:
                        test             rax, rax
                        je               .Lx56_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx56_7]
                        lea              rdx, [rip + .Lx56_8]
                        jmp              rax
.Lx56_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx56_2
.Lx56_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx56_2
.Lx56_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                        js               xchain48_n0_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx56_6]
                        sub              rsp, 8
                        push             rax
                        jmp              xchain48_n5_α
.Lx56_6:
                        add              rsp, 16
                        jmp              xchain48_n0_af
xchain48_n4_β:
                        jmp              qword ptr [rsp]
# IR_MATCH_LIT
xchain48_n5_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                        jg               xchain48_n4_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 43
                        jne              xchain48_n4_β
                        add              r14d, 1
                        jmp              xchain48_n6_α
xchain48_n5_β:
                        sub              r14d, 1
                        jmp              xchain48_n4_β
# IR_MATCH_DEFER (ZS-2 jmp-entry)
xchain48_n6_α:
                        lea              rsi, [rip + g_sno_defer_cells+104]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                        jne              .Lx59_11
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        cmp              eax, 3
                        jne              .Lx59_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                        jne              .Lx59_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                        jmp              .Lx59_10
.Lx59_9:
                        xor              eax, eax
.Lx59_10:
                        lea              rsi, [rip + g_sno_defer_cells+104]
                        mov              qword ptr [rsi + 0], rax
.Lx59_11:
                        test             rax, rax
                        jz               .Lx59_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx59_4]
                        lea              rdx, [rip + .Lx59_5]
                        jmp              rax
.Lx59_4:
                        jmp              xchain48_n0_as
.Lx59_5:
                        jmp              xchain48_n5_β
.Lx59_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S2]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx59_2:
                        test             rax, rax
                        je               .Lx59_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx59_7]
                        lea              rdx, [rip + .Lx59_8]
                        jmp              rax
.Lx59_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx59_2
.Lx59_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx59_2
.Lx59_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                        js               xchain48_n5_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx59_6]
                        sub              rsp, 8
                        push             rax
                        jmp              xchain48_n0_as
.Lx59_6:
                        add              rsp, 16
                        jmp              xchain48_n5_β
xchain48_n6_β:
                        jmp              qword ptr [rsp]
# IR_MATCH_DEFER (ZS-2 jmp-entry)
xchain48_n7_α:
                        lea              rsi, [rip + g_sno_defer_cells+112]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                        jne              .Lx60_11
                        mov              rax, qword ptr [1879052352]
                        mov              rdx, qword ptr [1879052360]
                        cmp              eax, 3
                        jne              .Lx60_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                        jne              .Lx60_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                        jmp              .Lx60_10
.Lx60_9:
                        xor              eax, eax
.Lx60_10:
                        lea              rsi, [rip + g_sno_defer_cells+112]
                        mov              qword ptr [rsi + 0], rax
.Lx60_11:
                        test             rax, rax
                        jz               .Lx60_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx60_4]
                        lea              rdx, [rip + .Lx60_5]
                        jmp              rax
.Lx60_4:
                        jmp              xchain48_n8_α
.Lx60_5:
                        jmp              xchain48_n0_af
.Lx60_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S5]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx60_2:
                        test             rax, rax
                        je               .Lx60_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx60_7]
                        lea              rdx, [rip + .Lx60_8]
                        jmp              rax
.Lx60_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx60_2
.Lx60_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx60_2
.Lx60_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                        js               xchain48_n0_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx60_6]
                        sub              rsp, 8
                        push             rax
                        jmp              xchain48_n8_α
.Lx60_6:
                        add              rsp, 16
                        jmp              xchain48_n0_af
xchain48_n7_β:
                        jmp              qword ptr [rsp]
# IR_MATCH_LIT
xchain48_n8_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                        jg               xchain48_n7_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 45
                        jne              xchain48_n7_β
                        add              r14d, 1
                        jmp              xchain48_n9_α
xchain48_n8_β:
                        sub              r14d, 1
                        jmp              xchain48_n7_β
# IR_MATCH_DEFER (ZS-2 jmp-entry)
xchain48_n9_α:
                        lea              rsi, [rip + g_sno_defer_cells+120]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                        jne              .Lx63_11
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        cmp              eax, 3
                        jne              .Lx63_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                        jne              .Lx63_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                        jmp              .Lx63_10
.Lx63_9:
                        xor              eax, eax
.Lx63_10:
                        lea              rsi, [rip + g_sno_defer_cells+120]
                        mov              qword ptr [rsi + 0], rax
.Lx63_11:
                        test             rax, rax
                        jz               .Lx63_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx63_4]
                        lea              rdx, [rip + .Lx63_5]
                        jmp              rax
.Lx63_4:
                        jmp              xchain48_n0_as
.Lx63_5:
                        jmp              xchain48_n8_β
.Lx63_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S2]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx63_2:
                        test             rax, rax
                        je               .Lx63_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx63_7]
                        lea              rdx, [rip + .Lx63_8]
                        jmp              rax
.Lx63_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx63_2
.Lx63_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx63_2
.Lx63_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                        js               xchain48_n8_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx63_6]
                        sub              rsp, 8
                        push             rax
                        jmp              xchain48_n0_as
.Lx63_6:
                        add              rsp, 16
                        jmp              xchain48_n8_β
xchain48_n9_β:
                        jmp              qword ptr [rsp]
proc_PAT$5_scanhit:
cmp qword ptr [rbp + 192], 1
jne 7f
mov ecx, dword ptr [rbp + 184]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$5_γ
proc_PAT$5_scanfail:
cmp qword ptr [rbp + 192], 1
jne 8f
mov eax, dword ptr [rbp + 184]
inc eax
cmp eax, r15d
jg 8f
lea rcx, [rip + g_anchor]
cmp qword ptr [rcx], 0
jne 8f
mov dword ptr [rbp + 184], eax
mov r14d, eax
mov rsp, rbp
jmp proc_PAT$5_attempt
8:
jmp proc_PAT$5_ω
proc_PAT$5_res:
add rsp, 8
pop rbp
proc_PAT$5_β:
jmp qword ptr [rbp + 160]
proc_PAT$5_γ:
push rbp
lea rax, [rip + proc_PAT$5_res]
push rax
mov rax, [rbp + 200]
mov rbp, [rbp + 216]
jmp rax
proc_PAT$5_ω:
mov rax, [rbp + 208]
lea rsp, [rbp + 224]
mov rbp, [rbp + 216]
jmp rax
  .globl proc_PAT$6_α
proc_PAT$6_α:
#=======================================================================================================================
    .global proc_PAT$6_α
    .global proc_PAT$6_β
    .global proc_PAT$6_γ
    .global proc_PAT$6_ω
  sub rsp, 304
  mov [rsp + 280], rcx
  mov [rsp + 288], rdx
  mov [rsp + 296], rbp
  mov rbp, rsp
  mov qword ptr [rsp], 0
  mov qword ptr [rsp + 8], 0
  mov qword ptr [rsp + 240], 0
  mov qword ptr [rsp + 248], 0
  mov qword ptr [rsp + 256], 0
  mov qword ptr [rsp + 264], rsp
mov qword ptr [rbp + 272], r8
mov dword ptr [rbp + 264], r14d
proc_PAT$6_attempt:
proc_PAT$6_α_body:
lea rax, [rip + xchain64_n0_β]
mov qword ptr [rbp + 240], rax
# IR_MATCH_SEQ_NARY (SPD SEQ-STATIC: zero-counter, sigma/phi statically wired)
xchain64_n0_α:
                        mov              dword ptr [rbp + 16], r14d
                        jmp              xchain64_n1_α
xchain64_n0_as:
                        jmp              proc_PAT$6_γ
xchain64_n0_β:
                        jmp              xchain64_n5_β
xchain64_n0_af:
                        jmp              proc_PAT$6_ω
# IR_LIT_INTEGER
xchain64_n1_α:
                        mov              qword ptr [rbp + 48], 6
                        mov              rax, qword ptr [rip + .Lx67_0]
                        mov              qword ptr [rbp + 56], rax
                        jmp              xchain64_n2_α
xchain64_n1_β:
                        jmp              proc_PAT$6_ω
.Lx67_0:
                        .quad            0
# IR_MATCH_POS
xchain64_n2_α:
                        mov              rax, 0
                        cmp              r14d, eax
                        jne              proc_PAT$6_ω
                        jmp              xchain64_n3_α
xchain64_n2_β:
                        jmp              proc_PAT$6_ω
# IR_MATCH_ARBNO_NARY (ZB-FC-4 rsp linked-frame-chain)
xchain64_n3_α:
                        mov              dword ptr [rbp + 96], r14d
                        mov              dword ptr [rbp + 100], r14d
                        mov              dword ptr [rbp + 104], 0
                        mov              qword ptr [rbp + 120], rsp
                        mov              qword ptr [rbp + 112], 0
                        jmp              xchain64_n4_α
xchain64_n3_β:
                        mov              r14d, dword ptr [rbp + 100]
                        mov              rax, qword ptr [rbp + 112]
                        sub              rsp, 112
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 112], rsp
                        mov              rbp, rsp
                        add              rbp, -104
                        jmp              xchain64_n6_α
xchain64_n3_as:
                        mov              eax, dword ptr [rbp + 112]
                        cmp              r14d, eax
                        je               xchain64_n6_β
                        mov              rbp, qword ptr [rbp + 104]
                        mov              eax, dword ptr [rbp + 104]
                        add              eax, 1
                        mov              dword ptr [rbp + 104], eax
                        mov              dword ptr [rbp + 100], r14d
                        jmp              xchain64_n4_α
xchain64_n3_af:
                        mov              rax, qword ptr [rbp + 120]
                        mov              rdx, qword ptr [rbp + 104]
                        lea              rsp, [rbp + 216]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 104]
                        test             ecx, ecx
                        jz               .Lx70_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 104], ecx
                        mov              qword ptr [rbp + 112], rax
                        lea              rbp, [rax + -104]
                        jmp              xchain64_n6_β
.Lx70_2:
                        mov              r14d, dword ptr [rbp + 96]
                        mov              rsp, qword ptr [rbp + 120]
                        jmp              xchain64_n2_β
# IR_LIT_INTEGER
xchain64_n4_α:
                        mov              qword ptr [rbp + 208], 6
                        mov              rax, qword ptr [rip + .Lx71_0]
                        mov              qword ptr [rbp + 216], rax
                        jmp              xchain64_n5_α
xchain64_n4_β:
                        jmp              xchain64_n3_β
.Lx71_0:
                        .quad            0
# IR_MATCH_RPOS
xchain64_n5_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                        jne              xchain64_n3_β
                        jmp              proc_PAT$6_γ
xchain64_n5_β:
                        jmp              xchain64_n3_β
# IR_MATCH_SEQ_NARY (SPD SEQ-STATIC: zero-counter, sigma/phi statically wired)
xchain64_n6_α:
                        mov              dword ptr [rbp + 144], r14d
                        jmp              xchain64_n8_α
xchain64_n6_as:
                        jmp              xchain64_n3_as
xchain64_n6_β:
                        jmp              xchain64_n7_β
xchain64_n6_af:
                        jmp              xchain64_n3_af
# IR_MATCH_DEFER (ZS-2 jmp-entry)
xchain64_n7_α:
                        mov              rax, qword ptr [1879052384]
                        mov              rdx, qword ptr [1879052392]
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
                        test             rax, rax
                        jz               .Lx75_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx75_4]
                        lea              rdx, [rip + .Lx75_5]
                        jmp              rax
.Lx75_4:
                        jmp              xchain64_n3_as
.Lx75_5:
                        jmp              xchain64_n8_β
.Lx75_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S6]
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
                        js               xchain64_n8_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx75_6]
                        sub              rsp, 8
                        push             rax
                        jmp              xchain64_n3_as
.Lx75_6:
                        add              rsp, 16
                        jmp              xchain64_n8_β
xchain64_n7_β:
                        jmp              qword ptr [rsp]
# IR_MATCH_DEFER (ZS-2 jmp-entry)
xchain64_n8_α:
                        lea              rsi, [rip + g_sno_defer_cells+128]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                        jne              .Lx76_11
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        cmp              eax, 3
                        jne              .Lx76_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                        jne              .Lx76_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                        jmp              .Lx76_10
.Lx76_9:
                        xor              eax, eax
.Lx76_10:
                        lea              rsi, [rip + g_sno_defer_cells+128]
                        mov              qword ptr [rsi + 0], rax
.Lx76_11:
                        test             rax, rax
                        jz               .Lx76_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx76_4]
                        lea              rdx, [rip + .Lx76_5]
                        jmp              rax
.Lx76_4:
                        jmp              xchain64_n7_α
.Lx76_5:
                        jmp              xchain64_n3_af
.Lx76_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S2]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx76_2:
                        test             rax, rax
                        je               .Lx76_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx76_7]
                        lea              rdx, [rip + .Lx76_8]
                        jmp              rax
.Lx76_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx76_2
.Lx76_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx76_2
.Lx76_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                        js               xchain64_n3_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx76_6]
                        sub              rsp, 8
                        push             rax
                        jmp              xchain64_n7_α
.Lx76_6:
                        add              rsp, 16
                        jmp              xchain64_n3_af
xchain64_n8_β:
                        jmp              qword ptr [rsp]
proc_PAT$6_scanhit:
cmp qword ptr [rbp + 272], 1
jne 7f
mov ecx, dword ptr [rbp + 264]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$6_γ
proc_PAT$6_scanfail:
cmp qword ptr [rbp + 272], 1
jne 8f
mov eax, dword ptr [rbp + 264]
inc eax
cmp eax, r15d
jg 8f
lea rcx, [rip + g_anchor]
cmp qword ptr [rcx], 0
jne 8f
mov dword ptr [rbp + 264], eax
mov r14d, eax
mov rsp, rbp
jmp proc_PAT$6_attempt
8:
jmp proc_PAT$6_ω
proc_PAT$6_res:
add rsp, 8
pop rbp
proc_PAT$6_β:
jmp qword ptr [rbp + 240]
proc_PAT$6_γ:
push rbp
lea rax, [rip + proc_PAT$6_res]
push rax
mov rax, [rbp + 280]
mov rbp, [rbp + 296]
jmp rax
proc_PAT$6_ω:
mov rax, [rbp + 288]
lea rsp, [rbp + 304]
mov rbp, [rbp + 296]
jmp rax
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "PAT$0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_PAT$0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 64
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_zstatic@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "PAT$1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_PAT$1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 64
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_zstatic@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "PAT$2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_PAT$2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 144
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "PAT$3"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_PAT$3_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 160
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "PAT$4"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + proc_PAT$4_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 192
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "PAT$5"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname5]
                        lea              rsi, [rip + proc_PAT$5_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 192
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname6:       .string          "PAT$6"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname6]
                        lea              rsi, [rip + proc_PAT$6_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 272
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.Lgvan0:                .string          "V"
.Lgvan1:                .string          "I"
.Lgvan2:                .string          "A"
.Lgvan3:                .string          "F"
.Lgvan4:                .string          "T"
.Lgvan5:                .string          "X"
.Lgvan6:                .string          "eol"
.Lgvan7:                .string          "C"
.Lgvan8:                .string          "src"
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
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        mov              edi, 9
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 9
                        call             gva_register@PLT
                        xor              esi, esi
                        call             main_α
                        xor              eax, eax
                        add              rsp, 24
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
  mov qword ptr [rsp + 1592], rsp
  mov r12, qword ptr [1879048192]
  mov [rsp + 65536], rbp
  mov rbp, rsp
main_α_body:
#         V              =  ANY('abcdefghijklmnopqrstuvwxyz')
# IR_LIT_STRING
xchain77_n0_α:
                        mov              qword ptr [rbp + 160], 1
                        mov              rax, qword ptr [rip + .Lx78_0]
                        mov              qword ptr [rbp + 168], rax
                        jmp              xchain77_n1_α
.Lx78_0:
                        .quad            .Lx78_0_s
.Lx78_0_s:
                        .string          "PAT$0"
xchain77_n1_α:
# BOX IR_CALL SNO$MKPAT(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+160] -> [zr+128]
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 136], rax
                        .section         .rodata
.Lrkfn80:               .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn80]
                        lea              rsi, [rbp + 128]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                        je               xchain77_n3_α
                        jmp              xchain77_n2_α
xchain77_n1_β:
                        jmp              xchain77_n3_α
# IR_ASSIGN gva
xchain77_n2_α:
                        mov              rax, qword ptr [rbp + 112]
                        mov              rdx, qword ptr [rbp + 120]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        jmp              xchain77_n3_α
#         I              =  SPAN('0123456789')
# IR_LIT_STRING
xchain77_n3_α:
                        mov              qword ptr [rbp + 256], 1
                        mov              rax, qword ptr [rip + .Lx82_0]
                        mov              qword ptr [rbp + 264], rax
                        jmp              xchain77_n4_α
.Lx82_0:
                        .quad            .Lx82_0_s
.Lx82_0_s:
                        .string          "PAT$1"
xchain77_n4_α:
# BOX IR_CALL SNO$MKPAT(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+256] -> [zr+224]
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 232], rax
                        .section         .rodata
.Lrkfn84:               .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn84]
                        lea              rsi, [rbp + 224]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 99
                        je               xchain77_n6_α
                        jmp              xchain77_n5_α
xchain77_n4_β:
                        jmp              xchain77_n6_α
# IR_ASSIGN gva
xchain77_n5_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        mov              qword ptr [1879052304], rax
                        mov              qword ptr [1879052312], rdx
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        jmp              xchain77_n6_α
#         A              =  V | I | '(' *X ')'
# IR_LIT_STRING
xchain77_n6_α:
                        mov              qword ptr [rbp + 352], 1
                        mov              rax, qword ptr [rip + .Lx86_0]
                        mov              qword ptr [rbp + 360], rax
                        jmp              xchain77_n7_α
.Lx86_0:
                        .quad            .Lx86_0_s
.Lx86_0_s:
                        .string          "PAT$2"
xchain77_n7_α:
# BOX IR_CALL SNO$MKPAT(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+352] -> [zr+320]
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 328], rax
                        .section         .rodata
.Lrkfn88:               .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn88]
                        lea              rsi, [rbp + 320]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              eax, 99
                        je               xchain77_n9_α
                        jmp              xchain77_n8_α
xchain77_n7_β:
                        jmp              xchain77_n9_α
# IR_ASSIGN gva
xchain77_n8_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        mov              qword ptr [1879052320], rax
                        mov              qword ptr [1879052328], rdx
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        jmp              xchain77_n9_α
#         F              =  A | '+' *F | '-' *F
# IR_LIT_STRING
xchain77_n9_α:
                        mov              qword ptr [rbp + 448], 1
                        mov              rax, qword ptr [rip + .Lx90_0]
                        mov              qword ptr [rbp + 456], rax
                        jmp              xchain77_n10_α
.Lx90_0:
                        .quad            .Lx90_0_s
.Lx90_0_s:
                        .string          "PAT$3"
xchain77_n10_α:
# BOX IR_CALL SNO$MKPAT(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+448] -> [zr+416]
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 424], rax
                        .section         .rodata
.Lrkfn92:               .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn92]
                        lea              rsi, [rbp + 416]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 99
                        je               xchain77_n12_α
                        jmp              xchain77_n11_α
xchain77_n10_β:
                        jmp              xchain77_n12_α
# IR_ASSIGN gva
xchain77_n11_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              rdx, qword ptr [rbp + 408]
                        mov              qword ptr [1879052336], rax
                        mov              qword ptr [1879052344], rdx
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        jmp              xchain77_n12_α
#         T              =  F '*' *T | F '/' *T | F
# IR_LIT_STRING
xchain77_n12_α:
                        mov              qword ptr [rbp + 544], 1
                        mov              rax, qword ptr [rip + .Lx94_0]
                        mov              qword ptr [rbp + 552], rax
                        jmp              xchain77_n13_α
.Lx94_0:
                        .quad            .Lx94_0_s
.Lx94_0_s:
                        .string          "PAT$4"
xchain77_n13_α:
# BOX IR_CALL SNO$MKPAT(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+544] -> [zr+512]
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 520], rax
                        .section         .rodata
.Lrkfn96:               .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn96]
                        lea              rsi, [rbp + 512]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 99
                        je               xchain77_n15_α
                        jmp              xchain77_n14_α
xchain77_n13_β:
                        jmp              xchain77_n15_α
# IR_ASSIGN gva
xchain77_n14_α:
                        mov              rax, qword ptr [rbp + 496]
                        mov              rdx, qword ptr [rbp + 504]
                        mov              qword ptr [1879052352], rax
                        mov              qword ptr [1879052360], rdx
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        jmp              xchain77_n15_α
#         X              =  T '+' *X | T '-' *X | T
# IR_LIT_STRING
xchain77_n15_α:
                        mov              qword ptr [rbp + 640], 1
                        mov              rax, qword ptr [rip + .Lx98_0]
                        mov              qword ptr [rbp + 648], rax
                        jmp              xchain77_n16_α
.Lx98_0:
                        .quad            .Lx98_0_s
.Lx98_0_s:
                        .string          "PAT$5"
xchain77_n16_α:
# BOX IR_CALL SNO$MKPAT(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+640] -> [zr+608]
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 616], rax
                        .section         .rodata
.Lrkfn100:              .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn100]
                        lea              rsi, [rbp + 608]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              eax, 99
                        je               xchain77_n18_α
                        jmp              xchain77_n17_α
xchain77_n16_β:
                        jmp              xchain77_n18_α
# IR_ASSIGN gva
xchain77_n17_α:
                        mov              rax, qword ptr [rbp + 592]
                        mov              rdx, qword ptr [rbp + 600]
                        mov              qword ptr [1879052368], rax
                        mov              qword ptr [1879052376], rdx
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        jmp              xchain77_n18_α
#         eol            =  CHAR(10)
# IR_LIT_INTEGER
xchain77_n18_α:
                        mov              qword ptr [rbp + 736], 6
                        mov              rax, qword ptr [rip + .Lx102_0]
                        mov              qword ptr [rbp + 744], rax
                        jmp              xchain77_n19_α
.Lx102_0:
                        .quad            10
xchain77_n19_α:
# BOX CALL CHAR(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [zr+736] -> [zr+704]
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 712], rax
                        .section         .rodata
.Lbynamefn66:           .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn66]
                        lea              rsi, [rbp + 704]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              eax, 99
                        je               xchain77_n21_α
                        jmp              xchain77_n20_α
xchain77_n19_β:
                        jmp              xchain77_n21_α
# IR_ASSIGN gva
xchain77_n20_α:
                        mov              rax, qword ptr [rbp + 688]
                        mov              rdx, qword ptr [rbp + 696]
                        mov              qword ptr [1879052384], rax
                        mov              qword ptr [1879052392], rdx
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        jmp              xchain77_n21_α
#         C              =  POS(0) ARBNO(X eol) RPOS(0)
# IR_LIT_STRING
xchain77_n21_α:
                        mov              qword ptr [rbp + 832], 1
                        mov              rax, qword ptr [rip + .Lx105_0]
                        mov              qword ptr [rbp + 840], rax
                        jmp              xchain77_n22_α
.Lx105_0:
                        .quad            .Lx105_0_s
.Lx105_0_s:
                        .string          "PAT$6"
xchain77_n22_α:
# BOX IR_CALL SNO$MKPAT(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+832] -> [zr+800]
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 808], rax
                        .section         .rodata
.Lrkfn107:              .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn107]
                        lea              rsi, [rbp + 800]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        cmp              eax, 99
                        je               xchain77_n24_α
                        jmp              xchain77_n23_α
xchain77_n22_β:
                        jmp              xchain77_n24_α
# IR_ASSIGN gva
xchain77_n23_α:
                        mov              rax, qword ptr [rbp + 784]
                        mov              rdx, qword ptr [rbp + 792]
                        mov              qword ptr [1879052400], rax
                        mov              qword ptr [1879052408], rdx
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                        jmp              xchain77_n24_α
#         &TRIM          =  0
# IR_LIT_STRING
xchain77_n24_α:
                        mov              qword ptr [rbp + 928], 1
                        mov              rax, qword ptr [rip + .Lx109_0]
                        mov              qword ptr [rbp + 936], rax
                        jmp              xchain77_n25_α
.Lx109_0:
                        .quad            .Lx109_0_s
.Lx109_0_s:
                        .string          "TRIM"
# IR_LIT_INTEGER
xchain77_n25_α:
                        mov              qword ptr [rbp + 960], 6
                        mov              rax, qword ptr [rip + .Lx110_0]
                        mov              qword ptr [rbp + 968], rax
                        jmp              xchain77_n26_α
.Lx110_0:
                        .quad            0
xchain77_n26_α:
# BOX IR_CALL SNO$KWSET(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+928] -> [zr+880]
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 888], rax
# marshal arg1 = producer-box slot [zr+960] -> [zr+896]
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 904], rax
                        .section         .rodata
.Lrkfn112:              .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn112]
                        lea              rsi, [rbp + 880]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                        cmp              eax, 99
                        je               xchain77_n27_α
                        jmp              xchain77_n27_α
xchain77_n26_β:
                        jmp              xchain77_n27_α
#         INPUT(.INPUT, 9, '[-f0 -r4000000]')
# IR_LIT_STRING
xchain77_n27_α:
                        mov              qword ptr [rbp + 1120], 1
                        mov              rax, qword ptr [rip + .Lx113_0]
                        mov              qword ptr [rbp + 1128], rax
                        jmp              xchain77_n28_α
.Lx113_0:
                        .quad            .Lx113_0_s
.Lx113_0_s:
                        .string          "INPUT"
xchain77_n28_α:
# BOX IR_CALL SNO$NAME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1120] -> [zr+1088]
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1096], rax
                        .section         .rodata
.Lrkfn115:              .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn115]
                        lea              rsi, [rbp + 1088]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                        cmp              eax, 99
                        je               xchain77_n30_α
                        jmp              xchain77_n29_α
xchain77_n28_β:
                        jmp              xchain77_n30_α
# IR_LIT_INTEGER
xchain77_n29_α:
                        mov              qword ptr [rbp + 1152], 6
                        mov              rax, qword ptr [rip + .Lx116_0]
                        mov              qword ptr [rbp + 1160], rax
                        jmp              xchain77_n31_α
.Lx116_0:
                        .quad            9
#         src            =  INPUT                          :F(fail)
# IR_VAR
xchain77_n30_α:
                        mov              rdi, qword ptr [rip + .Lx117_0]
                        call             NV_GET_fn@PLT
                        cmp              eax, 99
                        je               xchain77_n33_α
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx
                        jmp              xchain77_n32_α
.Lx117_0:
                        .quad            .Lx117_0_s
.Lx117_0_s:
                        .string          "INPUT"
# IR_LIT_STRING
xchain77_n31_α:
                        mov              qword ptr [rbp + 1184], 1
                        mov              rax, qword ptr [rip + .Lx118_0]
                        mov              qword ptr [rbp + 1192], rax
                        jmp              xchain77_n34_α
.Lx118_0:
                        .quad            .Lx118_0_s
.Lx118_0_s:
                        .string          "[-f0 -r4000000]"
# IR_ASSIGN gva
xchain77_n32_α:
                        mov              rax, qword ptr [rbp + 1232]
                        mov              rdx, qword ptr [rbp + 1240]
                        mov              qword ptr [1879052416], rax
                        mov              qword ptr [1879052424], rdx
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                        jmp              xchain77_n35_α
# fail    OUTPUT         =  'Pattern match failed'
# IR_LIT_STRING
xchain77_n33_α:
                        mov              qword ptr [rbp + 1552], 1
                        mov              rax, qword ptr [rip + .Lx120_0]
                        mov              qword ptr [rbp + 1560], rax
                        jmp              xchain77_n36_α
.Lx120_0:
                        .quad            .Lx120_0_s
.Lx120_0_s:
                        .string          "Pattern match failed"
xchain77_n34_α:
# BOX CALL INPUT(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [zr+1072] -> [zr+1008]
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 1016], rax
# marshal arg1 = producer-box slot [zr+1152] -> [zr+1024]
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 1032], rax
# marshal arg2 = producer-box slot [zr+1184] -> [zr+1040]
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 1048], rax
                        .section         .rodata
.Lbynamefn81:           .string          "INPUT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn81]
                        lea              rsi, [rbp + 1008]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                        cmp              eax, 99
                        je               xchain77_n30_α
                        jmp              xchain77_n30_α
xchain77_n34_β:
                        jmp              xchain77_n30_α
#         src            C                                 :F(fail)
# IR_VAR
xchain77_n35_α:
                        mov              rax, qword ptr [1879052416]
                        mov              rdx, qword ptr [1879052424]
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                        jmp              xchain77_n37_α
# IR_ASSIGN global
xchain77_n36_α:
                        mov              rsi, qword ptr [rbp + 1552]
                        mov              rdx, qword ptr [rbp + 1560]
                        mov              rdi, qword ptr [rip + .Lx123_0]
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rbp + 1536], rax
                        mov              qword ptr [rbp + 1544], rdx
                        jmp              main_γ
.Lx123_0:
                        .quad            .Lx123_0_s
.Lx123_0_s:
                        .string          "OUTPUT"
# IR_MATCH_HEAD
xchain77_n37_α:
                        mov              qword ptr [rbp + 1320], rbp
                        mov              rdi, qword ptr [rbp + 1344]
                        mov              rsi, qword ptr [rbp + 1352]
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [rbp + 1312], r12
                        mov              qword ptr [rbp + 1296], rsp
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 1288], rax
                        mov              dword ptr [rbp + 1280], 0
.Lx125_0:
                        mov              r14d, dword ptr [rbp + 1280]
                        jmp              xchain77_n38_α
xchain77_n37_β:
                        add              dword ptr [rbp + 1280], 1
                        mov              eax, dword ptr [rbp + 1280]
                        cmp              eax, r15d
                        jg               .Lx125_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                        jne              .Lx125_1
                        jmp              .Lx125_0
.Lx125_1:
                        mov              rax, qword ptr [rbp + 1288]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 1296]
                        mov              r12, qword ptr [rbp + 1312]
                        mov              rbp, qword ptr [rbp + 1320]
                        jmp              xchain77_n33_α
# IR_MATCH_DEFER (ZS-2 jmp-entry)
xchain77_n38_α:
                        lea              rsi, [rip + g_sno_defer_cells+136]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                        jne              .Lx126_11
                        mov              rax, qword ptr [1879052400]
                        mov              rdx, qword ptr [1879052408]
                        cmp              eax, 3
                        jne              .Lx126_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                        jne              .Lx126_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                        jmp              .Lx126_10
.Lx126_9:
                        xor              eax, eax
.Lx126_10:
                        lea              rsi, [rip + g_sno_defer_cells+136]
                        mov              qword ptr [rsi + 0], rax
.Lx126_11:
                        test             rax, rax
                        jz               .Lx126_0
                        mov              r8d, 1
                        lea              rcx, [rip + .Lx126_4]
                        lea              rdx, [rip + .Lx126_5]
                        jmp              rax
.Lx126_4:
                        lea              rcx, [rip + g_scan_hit_start]
                        mov              rax, qword ptr [rcx]
                        mov              dword ptr [rbp + 1280], eax
                        jmp              xchain77_n39_α
.Lx126_5:
                        jmp              xchain77_n37_β
.Lx126_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S7]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx126_2:
                        test             rax, rax
                        je               .Lx126_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx126_7]
                        lea              rdx, [rip + .Lx126_8]
                        jmp              rax
.Lx126_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx126_2
.Lx126_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx126_2
.Lx126_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                        js               xchain77_n37_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx126_6]
                        sub              rsp, 8
                        push             rax
                        jmp              xchain77_n39_α
.Lx126_6:
                        add              rsp, 16
                        jmp              xchain77_n37_β
xchain77_n38_β:
                        jmp              qword ptr [rsp]
# IR_MATCH_RELEASE
xchain77_n39_α:
                        mov              rax, qword ptr [rbp + 1288]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 1296]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rsp + 1344]
                        mov              rsi, r12
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx128_1:
                        test             rax, rax
                        je               .Lx128_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx128_3]
                        lea              rdx, [rip + .Lx128_4]
                        jmp              rax
.Lx128_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                        jmp              .Lx128_1
.Lx128_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                        jmp              .Lx128_1
.Lx128_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + 1312]
                        mov              rbp, qword ptr [rbp + 1320]
                        jmp              xchain77_n40_α
#         OUTPUT         =  'matched bytes=' SIZE(src)      :(END)
# IR_LIT_STRING
xchain77_n40_α:
                        mov              qword ptr [rbp + 1424], 1
                        mov              rax, qword ptr [rip + .Lx129_0]
                        mov              qword ptr [rbp + 1432], rax
                        jmp              xchain77_n41_α
.Lx129_0:
                        .quad            .Lx129_0_s
.Lx129_0_s:
                        .string          "matched bytes="
# IR_VAR
xchain77_n41_α:
                        mov              rax, qword ptr [1879052416]
                        mov              rdx, qword ptr [1879052424]
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx
                        jmp              xchain77_n42_α
xchain77_n42_α:
# BOX IR_CALL SIZE(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1504] -> [zr+1472]
                        mov              rax, qword ptr [rbp + 1504]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 1512]
                        mov              qword ptr [rbp + 1480], rax
                        .section         .rodata
.Lrkfn132:              .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn132]
                        lea              rsi, [rbp + 1472]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx
                        cmp              eax, 99
                        je               main_γ
                        jmp              xchain77_n43_α
xchain77_n42_β:
                        jmp              main_γ
xchain77_n43_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 1424]
                        mov              rsi, qword ptr [rbp + 1432]
                        mov              rdx, qword ptr [rbp + 1456]
                        mov              rcx, qword ptr [rbp + 1464]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx
                        jmp              xchain77_n44_α
# IR_ASSIGN global
xchain77_n44_α:
                        mov              rsi, qword ptr [rbp + 1392]
                        mov              rdx, qword ptr [rbp + 1400]
                        mov              rdi, qword ptr [rip + .Lx134_0]
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                        jmp              main_γ
.Lx134_0:
                        .quad            .Lx134_0_s
.Lx134_0_s:
                        .string          "OUTPUT"
main_β:
jmp main_ω
main_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [rbp + 1592]
mov rbp, [rsp + 65536]
add rsp, 65544
ret
main_ω:
mov rsp, qword ptr [rbp + 1592]
mov dword ptr [rsp+0], 99
mov dword ptr [rsp+4], 0
mov qword ptr [rsp+8], 0
mov eax, 99
xor edx, edx
mov rbp, [rsp + 65536]
add rsp, 65544
ret
.section .rodata
.S0: .string "V"
.S1: .string "I"
.S2: .string "X"
.S3: .string "A"
.S4: .string "F"
.S5: .string "T"
.S6: .string "eol"
.S7: .string "C"
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
