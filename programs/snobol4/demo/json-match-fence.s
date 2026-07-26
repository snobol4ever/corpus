  .intel_syntax noprefix
  .text
  .globl proc_PAT$0_α
proc_PAT$0_α:
#=======================================================================================================================
    .global proc_PAT$0_α
    .global proc_PAT$0_β
    .global proc_PAT$0_γ
    .global proc_PAT$0_ω
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
proc_PAT$0_attempt:
proc_PAT$0_α_body:
lea rax, [rip + proc_PAT$0_ω]
mov qword ptr [rbp + 64], rax
# IR_MATCH_ALT_NARY
xchain0_n0_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                        mov              dword ptr [rsp + 4], 0
                        jmp              xchain0_n1_α
xchain0_n0_s0:
                        jmp              xchain0_n0_as
xchain0_n0_s1:
                        sub              rsp, 16
                        jmp              xchain0_n0_as
xchain0_n0_as:
                        jmp              proc_PAT$0_γ
xchain0_n0_β:
                        mov              eax, dword ptr [rsp + 20]
                        cmp              eax, 0
                        je               xchain0_n1_β
                        add              rsp, 16
                        jmp              xchain0_n2_β
xchain0_n0_af:
                        add              dword ptr [rsp + 4], 1
                        mov              r14d, dword ptr [rsp + 0]
                        mov              eax, dword ptr [rsp + 4]
                        cmp              eax, 1
                        je               xchain0_n2_α
                        add              rsp, 16
                        jmp              proc_PAT$0_ω
# IR_MATCH_SPAN
xchain0_n1_α:
                        sub              rsp, 16
                        lea              rdi, [rip + .C0]
                        movsxd           rcx, r14d
.Lx4_0:
                        cmp              ecx, r15d
                        jge              .Lx4_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                        je               .Lx4_1
                        add              ecx, 1
                        cmp              ecx, r15d
                        jge              .Lx4_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                        je               .Lx4_1
                        add              ecx, 1
                        cmp              ecx, r15d
                        jge              .Lx4_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                        je               .Lx4_1
                        add              ecx, 1
                        cmp              ecx, r15d
                        jge              .Lx4_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                        je               .Lx4_1
                        add              ecx, 1
                        jmp              .Lx4_0
.Lx4_1:
                        cmp              ecx, r14d
                        jg               .Lx4_240
                        add              rsp, 16
                        jmp              xchain0_n0_af
.Lx4_240:
                        mov              dword ptr [rsp + 4], r14d
                        mov              r14d, ecx
                        jmp              xchain0_n0_s0
xchain0_n1_β:
xchain0_n1_β:
                        mov              r14d, dword ptr [rsp + 4]
                        add              rsp, 16
                        jmp              xchain0_n0_af
# IR_MATCH_LIT
xchain0_n2_α:
                        jmp              xchain0_n0_s1
xchain0_n2_β:
                        jmp              xchain0_n0_af
proc_PAT$0_scanhit:
cmp qword ptr [rbp + 96], 1
jne 7f
mov ecx, dword ptr [rbp + 88]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$0_γ
proc_PAT$0_scanfail:
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
jmp proc_PAT$0_attempt
8:
jmp proc_PAT$0_ω
proc_PAT$0_res:
add rsp, 8
pop rbp
proc_PAT$0_β:
jmp qword ptr [rbp + 64]
proc_PAT$0_γ:
push rbp
lea rax, [rip + proc_PAT$0_res]
push rax
mov rax, [rbp + 104]
mov rbp, [rbp + 120]
jmp rax
proc_PAT$0_ω:
mov rax, [rbp + 112]
lea rsp, [rbp + 128]
mov rbp, [rbp + 120]
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
lea rax, [rip + xchain7_n0_β]
mov qword ptr [rbp + 32], rax
# IR_MATCH_BREAK
xchain7_n0_α:
                        sub              rsp, 16
                        lea              rdi, [rip + .C1]
                        movsxd           rcx, r14d
.Lx9_0:
                        cmp              ecx, r15d
                        jl               .Lx9_237
                        add              rsp, 16
                        jmp              proc_PAT$1_scanfail
.Lx9_237:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                        jnz              .Lx9_1
                        add              ecx, 1
                        cmp              ecx, r15d
                        jl               .Lx9_238
                        add              rsp, 16
                        jmp              proc_PAT$1_scanfail
.Lx9_238:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                        jnz              .Lx9_1
                        add              ecx, 1
                        cmp              ecx, r15d
                        jl               .Lx9_239
                        add              rsp, 16
                        jmp              proc_PAT$1_scanfail
.Lx9_239:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                        jnz              .Lx9_1
                        add              ecx, 1
                        cmp              ecx, r15d
                        jl               .Lx9_240
                        add              rsp, 16
                        jmp              proc_PAT$1_scanfail
.Lx9_240:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                        jnz              .Lx9_1
                        add              ecx, 1
                        jmp              .Lx9_0
.Lx9_1:
                        mov              dword ptr [rsp + 0], r14d
                        mov              r14d, ecx
                        jmp              proc_PAT$1_scanhit
xchain7_n0_β:
                        mov              r14d, dword ptr [rsp + 0]
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
  sub rsp, 336
  mov [rsp + 312], rcx
  mov [rsp + 320], rdx
  mov [rsp + 328], rbp
  mov rbp, rsp
  mov qword ptr [rsp], 0
  mov qword ptr [rsp + 8], 0
  mov qword ptr [rsp + 272], 0
  mov qword ptr [rsp + 280], 0
  mov qword ptr [rsp + 288], 0
  mov qword ptr [rsp + 296], rsp
mov qword ptr [rbp + 304], r8
mov dword ptr [rbp + 296], r14d
proc_PAT$2_attempt:
proc_PAT$2_α_body:
lea rax, [rip + proc_PAT$2_ω]
mov qword ptr [rbp + 272], rax
# IR_MATCH_FENCE1 (SYNC-POINT zeta RELEASE: watermark at alpha, OVER-SEAL whack to the rbp activation floor at the seal-success glue — s137 ruling)
xchain10_n0_α:
                        mov              qword ptr [rbp + 240], rsp
                        jmp              xchain10_n2_α
xchain10_n0_as:
                        mov              rsp, rbp
                        mov              qword ptr [rbp + 240], rbp
                        jmp              xchain10_n1_α
xchain10_n0_β:
xchain10_n0_af:
                        mov              rsp, qword ptr [rbp + 240]
                        jmp              proc_PAT$2_ω
# IR_MATCH_ALT_NARY
xchain10_n1_α:
                        mov              dword ptr [rbp + 176], r14d
                        mov              dword ptr [rbp + 180], 0
                        jmp              xchain10_n4_α
xchain10_n1_as:
                        jmp              xchain10_n3_α
xchain10_n1_β:
                        mov              eax, dword ptr [rbp + 180]
                        cmp              eax, 0
                        je               xchain10_n4_β
                        jmp              xchain10_n6_β
xchain10_n1_af:
                        add              dword ptr [rbp + 180], 1
                        mov              r14d, dword ptr [rbp + 176]
                        mov              eax, dword ptr [rbp + 180]
                        cmp              eax, 1
                        je               xchain10_n5_α
                        jmp              proc_PAT$2_ω
# IR_MATCH_ALT_NARY
xchain10_n2_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                        mov              dword ptr [rsp + 4], 0
                        jmp              xchain10_n7_α
xchain10_n2_s0:
                        jmp              xchain10_n2_as
xchain10_n2_s1:
                        jmp              xchain10_n2_as
xchain10_n2_as:
                        jmp              xchain10_n0_as
xchain10_n2_β:
                        mov              eax, dword ptr [rsp + 4]
                        cmp              eax, 0
                        je               xchain10_n7_β
                        jmp              xchain10_n8_β
xchain10_n2_af:
                        add              dword ptr [rsp + 4], 1
                        mov              r14d, dword ptr [rsp + 0]
                        mov              eax, dword ptr [rsp + 4]
                        cmp              eax, 1
                        je               xchain10_n8_α
                        add              rsp, 16
                        jmp              xchain10_n0_af
# IR_MATCH_FENCE1 (SYNC-POINT zeta RELEASE: watermark at alpha, OVER-SEAL whack to the rbp activation floor at the seal-success glue — s137 ruling)
xchain10_n3_α:
                        mov              qword ptr [rbp + 112], rsp
                        jmp              xchain10_n10_α
xchain10_n3_as:
                        mov              rsp, rbp
                        mov              qword ptr [rbp + 112], rbp
                        jmp              xchain10_n9_α
xchain10_n3_β:
xchain10_n3_af:
                        mov              rsp, qword ptr [rbp + 112]
                        jmp              proc_PAT$2_ω
# IR_MATCH_LIT
xchain10_n4_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                        jg               xchain10_n1_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 48
                        jne              xchain10_n1_af
                        add              r14d, 1
                        jmp              xchain10_n1_as
xchain10_n4_β:
                        sub              r14d, 1
                        jmp              xchain10_n1_af
# IR_MATCH_ANY
xchain10_n5_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                        jge              xchain10_n1_af
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C2]
                        cmp              byte ptr [rdi+rsi], 0
                        je               xchain10_n1_af
                        add              r14d, 1
                        jmp              xchain10_n6_α
xchain10_n5_β:
                        sub              r14d, 1
                        jmp              xchain10_n1_af
# IR_MATCH_FENCE1 (SYNC-POINT zeta RELEASE: watermark at alpha, OVER-SEAL whack to the rbp activation floor at the seal-success glue — s137 ruling)
xchain10_n6_α:
                        mov              qword ptr [rbp + 192], rsp
                        jmp              xchain10_n11_α
xchain10_n6_as:
                        mov              rsp, rbp
                        mov              qword ptr [rbp + 192], rbp
                        jmp              xchain10_n1_as
xchain10_n6_β:
xchain10_n6_af:
                        mov              rsp, qword ptr [rbp + 192]
                        jmp              xchain10_n1_af
# IR_MATCH_LIT
xchain10_n7_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                        jg               xchain10_n2_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 45
                        jne              xchain10_n2_af
                        add              r14d, 1
                        jmp              xchain10_n2_s0
xchain10_n7_β:
                        sub              r14d, 1
                        jmp              xchain10_n2_af
# IR_MATCH_LIT
xchain10_n8_α:
                        jmp              xchain10_n2_s1
xchain10_n8_β:
                        jmp              xchain10_n2_af
# IR_MATCH_FENCE1 (SYNC-POINT zeta RELEASE: watermark at alpha, OVER-SEAL whack to the rbp activation floor at the seal-success glue — s137 ruling)
xchain10_n9_α:
                        mov              qword ptr [rbp + 16], rsp
                        jmp              xchain10_n12_α
xchain10_n9_as:
                        mov              rsp, rbp
                        mov              qword ptr [rbp + 16], rbp
                        jmp              proc_PAT$2_γ
xchain10_n9_β:
xchain10_n9_af:
                        mov              rsp, qword ptr [rbp + 16]
                        jmp              proc_PAT$2_ω
# IR_MATCH_ALT_NARY
xchain10_n10_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                        mov              dword ptr [rsp + 4], 0
                        jmp              xchain10_n13_α
xchain10_n10_s0:
                        jmp              xchain10_n10_as
xchain10_n10_s1:
                        sub              rsp, 16
                        jmp              xchain10_n10_as
xchain10_n10_as:
                        jmp              xchain10_n3_as
xchain10_n10_β:
                        mov              eax, dword ptr [rsp + 20]
                        cmp              eax, 0
                        je               xchain10_n13_β
                        add              rsp, 16
                        jmp              xchain10_n14_β
xchain10_n10_af:
                        add              dword ptr [rsp + 4], 1
                        mov              r14d, dword ptr [rsp + 0]
                        mov              eax, dword ptr [rsp + 4]
                        cmp              eax, 1
                        je               xchain10_n14_α
                        add              rsp, 16
                        jmp              xchain10_n3_af
# IR_MATCH_ALT_NARY
xchain10_n11_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                        mov              dword ptr [rsp + 4], 0
                        jmp              xchain10_n15_α
xchain10_n11_s0:
                        jmp              xchain10_n11_as
xchain10_n11_s1:
                        sub              rsp, 16
                        jmp              xchain10_n11_as
xchain10_n11_as:
                        jmp              xchain10_n6_as
xchain10_n11_β:
                        mov              eax, dword ptr [rsp + 20]
                        cmp              eax, 0
                        je               xchain10_n15_β
                        add              rsp, 16
                        jmp              xchain10_n16_β
xchain10_n11_af:
                        add              dword ptr [rsp + 4], 1
                        mov              r14d, dword ptr [rsp + 0]
                        mov              eax, dword ptr [rsp + 4]
                        cmp              eax, 1
                        je               xchain10_n16_α
                        add              rsp, 16
                        jmp              xchain10_n6_af
# IR_MATCH_ALT_NARY
xchain10_n12_α:
                        mov              dword ptr [rbp + 32], r14d
                        mov              dword ptr [rbp + 36], 0
                        jmp              xchain10_n17_α
xchain10_n12_as:
                        jmp              xchain10_n9_as
xchain10_n12_β:
                        mov              eax, dword ptr [rbp + 36]
                        cmp              eax, 0
                        je               xchain10_n18_β
                        jmp              xchain10_n19_β
xchain10_n12_af:
                        add              dword ptr [rbp + 36], 1
                        mov              r14d, dword ptr [rbp + 32]
                        mov              eax, dword ptr [rbp + 36]
                        cmp              eax, 1
                        je               xchain10_n19_α
                        jmp              xchain10_n9_af
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
xchain10_n13_α:
                        jmp              xchain10_n20_α
xchain10_n13_as:
                        jmp              xchain10_n10_s0
xchain10_n13_β:
                        jmp              xchain10_n21_β
xchain10_n13_af:
                        jmp              xchain10_n10_af
# IR_MATCH_LIT
xchain10_n14_α:
                        jmp              xchain10_n10_s1
xchain10_n14_β:
                        jmp              xchain10_n10_af
# IR_MATCH_SPAN
xchain10_n15_α:
                        sub              rsp, 16
                        lea              rdi, [rip + .C3]
                        movsxd           rcx, r14d
.Lx42_0:
                        cmp              ecx, r15d
                        jge              .Lx42_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                        je               .Lx42_1
                        add              ecx, 1
                        cmp              ecx, r15d
                        jge              .Lx42_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                        je               .Lx42_1
                        add              ecx, 1
                        cmp              ecx, r15d
                        jge              .Lx42_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                        je               .Lx42_1
                        add              ecx, 1
                        cmp              ecx, r15d
                        jge              .Lx42_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                        je               .Lx42_1
                        add              ecx, 1
                        jmp              .Lx42_0
.Lx42_1:
                        cmp              ecx, r14d
                        jg               .Lx42_240
                        add              rsp, 16
                        jmp              xchain10_n11_af
.Lx42_240:
                        mov              dword ptr [rsp + 4], r14d
                        mov              r14d, ecx
                        jmp              xchain10_n11_s0
xchain10_n15_β:
xchain10_n15_β:
                        mov              r14d, dword ptr [rsp + 4]
                        add              rsp, 16
                        jmp              xchain10_n11_af
# IR_MATCH_LIT
xchain10_n16_α:
                        jmp              xchain10_n11_s1
xchain10_n16_β:
                        jmp              xchain10_n11_af
# IR_MATCH_ANY
xchain10_n17_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                        jge              xchain10_n12_af
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 101
                        je               .Lx46_0
                        cmp              esi, 69
                        je               .Lx46_0
                        jmp              xchain10_n12_af
.Lx46_0:
                        add              r14d, 1
                        jmp              xchain10_n22_α
xchain10_n17_β:
                        sub              r14d, 1
                        jmp              xchain10_n12_af
# IR_MATCH_SPAN
xchain10_n18_α:
                        sub              rsp, 16
                        lea              rdi, [rip + .C3]
                        movsxd           rcx, r14d
.Lx48_0:
                        cmp              ecx, r15d
                        jge              .Lx48_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                        je               .Lx48_1
                        add              ecx, 1
                        cmp              ecx, r15d
                        jge              .Lx48_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                        je               .Lx48_1
                        add              ecx, 1
                        cmp              ecx, r15d
                        jge              .Lx48_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                        je               .Lx48_1
                        add              ecx, 1
                        cmp              ecx, r15d
                        jge              .Lx48_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                        je               .Lx48_1
                        add              ecx, 1
                        jmp              .Lx48_0
.Lx48_1:
                        cmp              ecx, r14d
                        jg               .Lx48_240
                        add              rsp, 16
                        jmp              proc_PAT$2_scanfail
.Lx48_240:
                        mov              dword ptr [rsp + 4], r14d
                        mov              r14d, ecx
                        jmp              xchain10_n12_as
xchain10_n18_β:
xchain10_n18_β:
                        mov              r14d, dword ptr [rsp + 4]
                        add              rsp, 16
                        jmp              proc_PAT$2_scanfail
# IR_MATCH_LIT
xchain10_n19_α:
                        jmp              xchain10_n12_as
xchain10_n19_β:
                        jmp              xchain10_n12_af
# IR_MATCH_LIT
xchain10_n20_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                        jg               xchain10_n10_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 46
                        jne              xchain10_n10_af
                        add              r14d, 1
                        jmp              xchain10_n21_α
xchain10_n20_β:
                        sub              r14d, 1
                        jmp              xchain10_n10_af
# IR_MATCH_SPAN
xchain10_n21_α:
                        sub              rsp, 16
                        lea              rdi, [rip + .C3]
                        movsxd           rcx, r14d
.Lx54_0:
                        cmp              ecx, r15d
                        jge              .Lx54_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                        je               .Lx54_1
                        add              ecx, 1
                        cmp              ecx, r15d
                        jge              .Lx54_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                        je               .Lx54_1
                        add              ecx, 1
                        cmp              ecx, r15d
                        jge              .Lx54_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                        je               .Lx54_1
                        add              ecx, 1
                        cmp              ecx, r15d
                        jge              .Lx54_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                        je               .Lx54_1
                        add              ecx, 1
                        jmp              .Lx54_0
.Lx54_1:
                        cmp              ecx, r14d
                        jg               .Lx54_240
                        add              rsp, 16
                        jmp              xchain10_n20_β
.Lx54_240:
                        mov              dword ptr [rsp + 4], r14d
                        mov              r14d, ecx
                        jmp              xchain10_n10_s0
xchain10_n21_β:
xchain10_n21_β:
                        mov              r14d, dword ptr [rsp + 4]
                        add              rsp, 16
                        jmp              xchain10_n20_β
# IR_MATCH_FENCE1 (SYNC-POINT zeta RELEASE: watermark at alpha, OVER-SEAL whack to the rbp activation floor at the seal-success glue — s137 ruling)
xchain10_n22_α:
                        mov              qword ptr [rbp + 64], rsp
                        jmp              xchain10_n23_α
xchain10_n22_as:
                        mov              rsp, rbp
                        mov              qword ptr [rbp + 64], rbp
                        jmp              xchain10_n18_α
xchain10_n22_β:
xchain10_n22_af:
                        mov              rsp, qword ptr [rbp + 64]
                        jmp              xchain10_n12_af
# IR_MATCH_ALT_NARY
xchain10_n23_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                        mov              dword ptr [rsp + 4], 0
                        jmp              xchain10_n24_α
xchain10_n23_s0:
                        jmp              xchain10_n23_as
xchain10_n23_s1:
                        jmp              xchain10_n23_as
xchain10_n23_as:
                        jmp              xchain10_n22_as
xchain10_n23_β:
                        mov              eax, dword ptr [rsp + 4]
                        cmp              eax, 0
                        je               xchain10_n24_β
                        jmp              xchain10_n25_β
xchain10_n23_af:
                        add              dword ptr [rsp + 4], 1
                        mov              r14d, dword ptr [rsp + 0]
                        mov              eax, dword ptr [rsp + 4]
                        cmp              eax, 1
                        je               xchain10_n25_α
                        add              rsp, 16
                        jmp              xchain10_n22_af
# IR_MATCH_ANY
xchain10_n24_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                        jge              xchain10_n23_af
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 43
                        je               .Lx60_0
                        cmp              esi, 45
                        je               .Lx60_0
                        jmp              xchain10_n23_af
.Lx60_0:
                        add              r14d, 1
                        jmp              xchain10_n23_s0
xchain10_n24_β:
                        sub              r14d, 1
                        jmp              xchain10_n23_af
# IR_MATCH_LIT
xchain10_n25_α:
                        jmp              xchain10_n23_s1
xchain10_n25_β:
                        jmp              xchain10_n23_af
proc_PAT$2_scanhit:
cmp qword ptr [rbp + 304], 1
jne 7f
mov ecx, dword ptr [rbp + 296]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$2_γ
proc_PAT$2_scanfail:
cmp qword ptr [rbp + 304], 1
jne 8f
mov eax, dword ptr [rbp + 296]
inc eax
cmp eax, r15d
jg 8f
lea rcx, [rip + g_anchor]
cmp qword ptr [rcx], 0
jne 8f
mov dword ptr [rbp + 296], eax
mov r14d, eax
mov rsp, rbp
jmp proc_PAT$2_attempt
8:
jmp proc_PAT$2_ω
proc_PAT$2_res:
add rsp, 8
pop rbp
proc_PAT$2_β:
jmp qword ptr [rbp + 272]
proc_PAT$2_γ:
push rbp
lea rax, [rip + proc_PAT$2_res]
push rax
mov rax, [rbp + 312]
mov rbp, [rbp + 328]
jmp rax
proc_PAT$2_ω:
mov rax, [rbp + 320]
lea rsp, [rbp + 336]
mov rbp, [rbp + 328]
jmp rax
  .globl proc_PAT$3_α
proc_PAT$3_α:
#=======================================================================================================================
    .global proc_PAT$3_α
    .global proc_PAT$3_β
    .global proc_PAT$3_γ
    .global proc_PAT$3_ω
  sub rsp, 160
  mov [rsp + 136], rcx
  mov [rsp + 144], rdx
  mov [rsp + 152], rbp
  mov rbp, rsp
  mov qword ptr [rsp], 0
  mov qword ptr [rsp + 8], 0
  mov qword ptr [rsp + 96], 0
  mov qword ptr [rsp + 104], 0
  mov qword ptr [rsp + 112], 0
  mov qword ptr [rsp + 120], rsp
mov qword ptr [rbp + 128], r8
mov dword ptr [rbp + 120], r14d
proc_PAT$3_attempt:
proc_PAT$3_α_body:
lea rax, [rip + xchain63_n0_β]
mov qword ptr [rbp + 96], rax
# IR_MATCH_SEQ_NARY (SPD SEQ-STATIC: zero-counter, sigma/phi statically wired)
xchain63_n0_α:
                        mov              dword ptr [rbp + 16], r14d
                        jmp              xchain63_n1_α
xchain63_n0_as:
                        jmp              proc_PAT$3_γ
xchain63_n0_β:
                        jmp              xchain63_n2_β
xchain63_n0_af:
                        jmp              proc_PAT$3_ω
# IR_MATCH_DEFER (ZS-2 jmp-entry)
xchain63_n1_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 3
                        jne              .Lx66_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                        jne              .Lx66_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                        jmp              .Lx66_10
.Lx66_9:
                        xor              eax, eax
.Lx66_10:
                        test             rax, rax
                        jz               .Lx66_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx66_4]
                        lea              rdx, [rip + .Lx66_5]
                        jmp              rax
.Lx66_4:
                        jmp              xchain63_n2_α
.Lx66_5:
                        jmp              proc_PAT$3_ω
.Lx66_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx66_2:
                        test             rax, rax
                        je               .Lx66_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx66_7]
                        lea              rdx, [rip + .Lx66_8]
                        jmp              rax
.Lx66_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx66_2
.Lx66_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx66_2
.Lx66_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                        js               proc_PAT$3_ω
                        mov              r14d, eax
                        lea              rax, [rip + .Lx66_6]
                        sub              rsp, 8
                        push             rax
                        jmp              xchain63_n2_α
.Lx66_6:
                        add              rsp, 16
                        jmp              proc_PAT$3_ω
xchain63_n1_β:
                        jmp              qword ptr [rsp]
# IR_MATCH_ALT_NARY
xchain63_n2_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                        mov              dword ptr [rsp + 4], 0
                        jmp              xchain63_n3_α
xchain63_n2_s0:
                        jmp              xchain63_n2_as
xchain63_n2_s1:
                        jmp              xchain63_n2_as
xchain63_n2_as:
                        jmp              proc_PAT$3_γ
xchain63_n2_β:
                        mov              eax, dword ptr [rsp + 4]
                        cmp              eax, 0
                        je               xchain63_n3_β
                        jmp              xchain63_n4_β
xchain63_n2_af:
                        add              dword ptr [rsp + 4], 1
                        mov              r14d, dword ptr [rsp + 0]
                        mov              eax, dword ptr [rsp + 4]
                        cmp              eax, 1
                        je               xchain63_n4_α
                        add              rsp, 16
                        jmp              xchain63_n1_β
# IR_MATCH_ANY
xchain63_n3_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                        jge              xchain63_n2_af
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C4]
                        cmp              byte ptr [rdi+rsi], 0
                        je               xchain63_n2_af
                        add              r14d, 1
                        jmp              xchain63_n2_s0
xchain63_n3_β:
                        sub              r14d, 1
                        jmp              xchain63_n2_af
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
xchain63_n4_α:
                        jmp              xchain63_n5_α
xchain63_n4_as:
                        jmp              xchain63_n2_s1
xchain63_n4_β:
                        jmp              xchain63_n9_β
xchain63_n4_af:
                        jmp              xchain63_n2_af
# IR_MATCH_LIT
xchain63_n5_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                        jg               xchain63_n2_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 117
                        jne              xchain63_n2_af
                        add              r14d, 1
                        jmp              xchain63_n6_α
xchain63_n5_β:
                        sub              r14d, 1
                        jmp              xchain63_n2_af
# IR_MATCH_ANY
xchain63_n6_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                        jge              xchain63_n5_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C5]
                        cmp              byte ptr [rdi+rsi], 0
                        je               xchain63_n5_β
                        add              r14d, 1
                        jmp              xchain63_n7_α
xchain63_n6_β:
                        sub              r14d, 1
                        jmp              xchain63_n5_β
# IR_MATCH_ANY
xchain63_n7_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                        jge              xchain63_n6_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C5]
                        cmp              byte ptr [rdi+rsi], 0
                        je               xchain63_n6_β
                        add              r14d, 1
                        jmp              xchain63_n8_α
xchain63_n7_β:
                        sub              r14d, 1
                        jmp              xchain63_n6_β
# IR_MATCH_ANY
xchain63_n8_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                        jge              xchain63_n7_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C5]
                        cmp              byte ptr [rdi+rsi], 0
                        je               xchain63_n7_β
                        add              r14d, 1
                        jmp              xchain63_n9_α
xchain63_n8_β:
                        sub              r14d, 1
                        jmp              xchain63_n7_β
# IR_MATCH_ANY
xchain63_n9_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                        jge              xchain63_n8_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C5]
                        cmp              byte ptr [rdi+rsi], 0
                        je               xchain63_n8_β
                        add              r14d, 1
                        jmp              xchain63_n2_s1
xchain63_n9_β:
                        sub              r14d, 1
                        jmp              xchain63_n8_β
proc_PAT$3_scanhit:
cmp qword ptr [rbp + 128], 1
jne 7f
mov ecx, dword ptr [rbp + 120]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$3_γ
proc_PAT$3_scanfail:
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
jmp proc_PAT$3_attempt
8:
jmp proc_PAT$3_ω
proc_PAT$3_res:
add rsp, 8
pop rbp
proc_PAT$3_β:
jmp qword ptr [rbp + 96]
proc_PAT$3_γ:
push rbp
lea rax, [rip + proc_PAT$3_res]
push rax
mov rax, [rbp + 136]
mov rbp, [rbp + 152]
jmp rax
proc_PAT$3_ω:
mov rax, [rbp + 144]
lea rsp, [rbp + 160]
mov rbp, [rbp + 152]
jmp rax
  .globl proc_PAT$4_α
proc_PAT$4_α:
#=======================================================================================================================
    .global proc_PAT$4_α
    .global proc_PAT$4_β
    .global proc_PAT$4_γ
    .global proc_PAT$4_ω
  sub rsp, 256
  mov [rsp + 232], rcx
  mov [rsp + 240], rdx
  mov [rsp + 248], rbp
  mov rbp, rsp
  mov qword ptr [rsp], 0
  mov qword ptr [rsp + 8], 0
  mov qword ptr [rsp + 192], 0
  mov qword ptr [rsp + 200], 0
  mov qword ptr [rsp + 208], 0
  mov qword ptr [rsp + 216], rsp
mov qword ptr [rbp + 224], r8
mov dword ptr [rbp + 216], r14d
proc_PAT$4_attempt:
proc_PAT$4_α_body:
lea rax, [rip + xchain83_n0_β]
mov qword ptr [rbp + 192], rax
# IR_MATCH_SEQ_NARY (SPD SEQ-STATIC: zero-counter, sigma/phi statically wired)
xchain83_n0_α:
                        mov              dword ptr [rbp + 16], r14d
                        jmp              xchain83_n1_α
xchain83_n0_as:
                        jmp              proc_PAT$4_γ
xchain83_n0_β:
                        jmp              xchain83_n4_β
xchain83_n0_af:
                        jmp              proc_PAT$4_ω
# IR_MATCH_LIT
xchain83_n1_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                        jg               proc_PAT$4_ω
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 34
                        jne              proc_PAT$4_ω
                        add              r14d, 1
                        jmp              xchain83_n2_α
xchain83_n1_β:
                        sub              r14d, 1
                        jmp              proc_PAT$4_ω
# IR_MATCH_DEFER (ZS-2 jmp-entry)
xchain83_n2_α:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                        jne              .Lx88_11
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        cmp              eax, 3
                        jne              .Lx88_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                        jne              .Lx88_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                        jmp              .Lx88_10
.Lx88_9:
                        xor              eax, eax
.Lx88_10:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              qword ptr [rsi + 0], rax
.Lx88_11:
                        test             rax, rax
                        jz               .Lx88_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx88_4]
                        lea              rdx, [rip + .Lx88_5]
                        jmp              rax
.Lx88_4:
                        jmp              xchain83_n3_α
.Lx88_5:
                        jmp              xchain83_n1_β
.Lx88_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx88_2:
                        test             rax, rax
                        je               .Lx88_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx88_7]
                        lea              rdx, [rip + .Lx88_8]
                        jmp              rax
.Lx88_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx88_2
.Lx88_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx88_2
.Lx88_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                        js               xchain83_n1_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx88_6]
                        sub              rsp, 8
                        push             rax
                        jmp              xchain83_n3_α
.Lx88_6:
                        add              rsp, 16
                        jmp              xchain83_n1_β
xchain83_n2_β:
                        jmp              qword ptr [rsp]
# IR_MATCH_ARBNO_NARY (ZB-FC-4 rsp linked-frame-chain)
xchain83_n3_α:
                        mov              dword ptr [rbp + 80], r14d
                        mov              dword ptr [rbp + 84], r14d
                        mov              dword ptr [rbp + 88], 0
                        mov              qword ptr [rbp + 104], rsp
                        mov              qword ptr [rbp + 96], 0
                        jmp              xchain83_n4_α
xchain83_n3_β:
                        mov              r14d, dword ptr [rbp + 84]
                        mov              rax, qword ptr [rbp + 96]
                        sub              rsp, 112
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 96], rsp
                        mov              rbp, rsp
                        add              rbp, -88
                        jmp              xchain83_n5_α
xchain83_n3_as:
                        mov              eax, dword ptr [rbp + 96]
                        cmp              r14d, eax
                        je               xchain83_n5_β
                        mov              rbp, qword ptr [rbp + 88]
                        mov              eax, dword ptr [rbp + 88]
                        add              eax, 1
                        mov              dword ptr [rbp + 88], eax
                        mov              dword ptr [rbp + 84], r14d
                        jmp              xchain83_n4_α
xchain83_n3_af:
                        mov              rax, qword ptr [rbp + 104]
                        mov              rdx, qword ptr [rbp + 88]
                        lea              rsp, [rbp + 200]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 88]
                        test             ecx, ecx
                        jz               .Lx90_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 88], ecx
                        mov              qword ptr [rbp + 96], rax
                        lea              rbp, [rax + -88]
                        jmp              xchain83_n5_β
.Lx90_2:
                        mov              r14d, dword ptr [rbp + 80]
                        mov              rsp, qword ptr [rbp + 104]
                        jmp              xchain83_n2_β
# IR_MATCH_LIT
xchain83_n4_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                        jg               xchain83_n3_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 34
                        jne              xchain83_n3_β
                        add              r14d, 1
                        jmp              proc_PAT$4_γ
xchain83_n4_β:
                        sub              r14d, 1
                        jmp              xchain83_n3_β
# IR_MATCH_SEQ_NARY (SPD SEQ-STATIC: zero-counter, sigma/phi statically wired)
xchain83_n5_α:
                        mov              dword ptr [rbp + 128], r14d
                        jmp              xchain83_n7_α
xchain83_n5_as:
                        jmp              xchain83_n3_as
xchain83_n5_β:
                        jmp              xchain83_n6_β
xchain83_n5_af:
                        jmp              xchain83_n3_af
# IR_MATCH_DEFER (ZS-2 jmp-entry)
xchain83_n6_α:
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                        jne              .Lx95_11
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        cmp              eax, 3
                        jne              .Lx95_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                        jne              .Lx95_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                        jmp              .Lx95_10
.Lx95_9:
                        xor              eax, eax
.Lx95_10:
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              qword ptr [rsi + 0], rax
.Lx95_11:
                        test             rax, rax
                        jz               .Lx95_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx95_4]
                        lea              rdx, [rip + .Lx95_5]
                        jmp              rax
.Lx95_4:
                        jmp              xchain83_n3_as
.Lx95_5:
                        jmp              xchain83_n7_β
.Lx95_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx95_2:
                        test             rax, rax
                        je               .Lx95_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx95_7]
                        lea              rdx, [rip + .Lx95_8]
                        jmp              rax
.Lx95_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx95_2
.Lx95_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx95_2
.Lx95_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                        js               xchain83_n7_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx95_6]
                        sub              rsp, 8
                        push             rax
                        jmp              xchain83_n3_as
.Lx95_6:
                        add              rsp, 16
                        jmp              xchain83_n7_β
xchain83_n6_β:
                        jmp              qword ptr [rsp]
# IR_MATCH_DEFER (ZS-2 jmp-entry)
xchain83_n7_α:
                        lea              rsi, [rip + g_sno_defer_cells+16]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                        jne              .Lx96_11
                        mov              rax, qword ptr [1879052352]
                        mov              rdx, qword ptr [1879052360]
                        cmp              eax, 3
                        jne              .Lx96_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                        jne              .Lx96_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                        jmp              .Lx96_10
.Lx96_9:
                        xor              eax, eax
.Lx96_10:
                        lea              rsi, [rip + g_sno_defer_cells+16]
                        mov              qword ptr [rsi + 0], rax
.Lx96_11:
                        test             rax, rax
                        jz               .Lx96_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx96_4]
                        lea              rdx, [rip + .Lx96_5]
                        jmp              rax
.Lx96_4:
                        jmp              xchain83_n6_α
.Lx96_5:
                        jmp              xchain83_n3_af
.Lx96_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S2]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx96_2:
                        test             rax, rax
                        je               .Lx96_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx96_7]
                        lea              rdx, [rip + .Lx96_8]
                        jmp              rax
.Lx96_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx96_2
.Lx96_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx96_2
.Lx96_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                        js               xchain83_n3_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx96_6]
                        sub              rsp, 8
                        push             rax
                        jmp              xchain83_n6_α
.Lx96_6:
                        add              rsp, 16
                        jmp              xchain83_n3_af
xchain83_n7_β:
                        jmp              qword ptr [rsp]
proc_PAT$4_scanhit:
cmp qword ptr [rbp + 224], 1
jne 7f
mov ecx, dword ptr [rbp + 216]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$4_γ
proc_PAT$4_scanfail:
cmp qword ptr [rbp + 224], 1
jne 8f
mov eax, dword ptr [rbp + 216]
inc eax
cmp eax, r15d
jg 8f
lea rcx, [rip + g_anchor]
cmp qword ptr [rcx], 0
jne 8f
mov dword ptr [rbp + 216], eax
mov r14d, eax
mov rsp, rbp
jmp proc_PAT$4_attempt
8:
jmp proc_PAT$4_ω
proc_PAT$4_res:
add rsp, 8
pop rbp
proc_PAT$4_β:
jmp qword ptr [rbp + 192]
proc_PAT$4_γ:
push rbp
lea rax, [rip + proc_PAT$4_res]
push rax
mov rax, [rbp + 232]
mov rbp, [rbp + 248]
jmp rax
proc_PAT$4_ω:
mov rax, [rbp + 240]
lea rsp, [rbp + 256]
mov rbp, [rbp + 248]
jmp rax
  .globl proc_PAT$5_α
proc_PAT$5_α:
#=======================================================================================================================
    .global proc_PAT$5_α
    .global proc_PAT$5_β
    .global proc_PAT$5_γ
    .global proc_PAT$5_ω
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
proc_PAT$5_attempt:
proc_PAT$5_α_body:
lea rax, [rip + proc_PAT$5_ω]
mov qword ptr [rbp + 112], rax
# IR_MATCH_SEQ_NARY (SPD SEQ-STATIC: zero-counter, sigma/phi statically wired)
xchain97_n0_α:
                        mov              dword ptr [rbp + 16], r14d
                        jmp              xchain97_n1_α
xchain97_n0_as:
                        jmp              proc_PAT$5_γ
xchain97_n0_β:
                        jmp              xchain97_n5_β
xchain97_n0_af:
                        jmp              proc_PAT$5_ω
# IR_MATCH_DEFER (ZS-2 jmp-entry)
xchain97_n1_α:
# s137 SEALED defer: fence-demarked sync point (watermark in defer.pad)
                        mov              qword ptr [rbp + 32], rsp
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        cmp              eax, 3
                        jne              .Lx100_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                        jne              .Lx100_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                        jmp              .Lx100_10
.Lx100_9:
                        xor              eax, eax
.Lx100_10:
                        test             rax, rax
                        jz               .Lx100_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx100_4]
                        lea              rdx, [rip + .Lx100_5]
                        jmp              rax
.Lx100_4:
                        mov              rsp, qword ptr [rbp + 32]
                        jmp              xchain97_n2_α
.Lx100_5:
                        mov              rsp, qword ptr [rbp + 32]
                        jmp              proc_PAT$5_ω
.Lx100_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S3]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx100_2:
                        test             rax, rax
                        je               .Lx100_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx100_7]
                        lea              rdx, [rip + .Lx100_8]
                        jmp              rax
.Lx100_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx100_2
.Lx100_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx100_2
.Lx100_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                        js               proc_PAT$5_ω
                        mov              r14d, eax
                        lea              rax, [rip + .Lx100_6]
                        sub              rsp, 8
                        push             rax
                        jmp              xchain97_n2_α
.Lx100_6:
                        add              rsp, 16
                        jmp              proc_PAT$5_ω
xchain97_n1_β:
                        mov              rsp, qword ptr [rbp + 32]
                        jmp              proc_PAT$5_ω
# IR_MATCH_DEFER (ZS-2 jmp-entry)
xchain97_n2_α:
                        lea              rsi, [rip + g_sno_defer_cells+24]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                        jne              .Lx101_11
                        mov              rax, qword ptr [1879052384]
                        mov              rdx, qword ptr [1879052392]
                        cmp              eax, 3
                        jne              .Lx101_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                        jne              .Lx101_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                        jmp              .Lx101_10
.Lx101_9:
                        xor              eax, eax
.Lx101_10:
                        lea              rsi, [rip + g_sno_defer_cells+24]
                        mov              qword ptr [rsi + 0], rax
.Lx101_11:
                        test             rax, rax
                        jz               .Lx101_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx101_4]
                        lea              rdx, [rip + .Lx101_5]
                        jmp              rax
.Lx101_4:
                        jmp              xchain97_n3_α
.Lx101_5:
                        jmp              xchain97_n1_β
.Lx101_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S4]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx101_2:
                        test             rax, rax
                        je               .Lx101_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx101_7]
                        lea              rdx, [rip + .Lx101_8]
                        jmp              rax
.Lx101_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx101_2
.Lx101_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx101_2
.Lx101_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                        js               xchain97_n1_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx101_6]
                        sub              rsp, 8
                        push             rax
                        jmp              xchain97_n3_α
.Lx101_6:
                        add              rsp, 16
                        jmp              xchain97_n1_β
xchain97_n2_β:
                        jmp              qword ptr [rsp]
# IR_MATCH_DEFER (ZS-2 jmp-entry)
xchain97_n3_α:
# s137 SEALED defer: fence-demarked sync point (watermark in defer.pad)
                        mov              qword ptr [rbp + 64], rsp
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        cmp              eax, 3
                        jne              .Lx102_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                        jne              .Lx102_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                        jmp              .Lx102_10
.Lx102_9:
                        xor              eax, eax
.Lx102_10:
                        test             rax, rax
                        jz               .Lx102_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx102_4]
                        lea              rdx, [rip + .Lx102_5]
                        jmp              rax
.Lx102_4:
                        mov              rsp, qword ptr [rbp + 64]
                        jmp              xchain97_n4_α
.Lx102_5:
                        mov              rsp, qword ptr [rbp + 64]
                        jmp              xchain97_n2_β
.Lx102_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S3]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx102_2:
                        test             rax, rax
                        je               .Lx102_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx102_7]
                        lea              rdx, [rip + .Lx102_8]
                        jmp              rax
.Lx102_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx102_2
.Lx102_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx102_2
.Lx102_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                        js               xchain97_n2_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx102_6]
                        sub              rsp, 8
                        push             rax
                        jmp              xchain97_n4_α
.Lx102_6:
                        add              rsp, 16
                        jmp              xchain97_n2_β
xchain97_n3_β:
                        mov              rsp, qword ptr [rbp + 64]
                        jmp              xchain97_n2_β
# IR_MATCH_LIT
xchain97_n4_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                        jg               xchain97_n3_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 58
                        jne              xchain97_n3_β
                        add              r14d, 1
                        jmp              xchain97_n5_α
xchain97_n4_β:
                        sub              r14d, 1
                        jmp              xchain97_n3_β
# IR_MATCH_DEFER (ZS-2 jmp-entry)
xchain97_n5_α:
# s137 SEALED defer: fence-demarked sync point (watermark in defer.pad)
                        mov              qword ptr [rbp + 96], rsp
                        mov              rax, qword ptr [1879052480]
                        mov              rdx, qword ptr [1879052488]
                        cmp              eax, 3
                        jne              .Lx105_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                        jne              .Lx105_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                        jmp              .Lx105_10
.Lx105_9:
                        xor              eax, eax
.Lx105_10:
                        test             rax, rax
                        jz               .Lx105_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx105_4]
                        lea              rdx, [rip + .Lx105_5]
                        jmp              rax
.Lx105_4:
                        mov              rsp, qword ptr [rbp + 96]
                        jmp              proc_PAT$5_γ
.Lx105_5:
                        mov              rsp, qword ptr [rbp + 96]
                        jmp              xchain97_n4_β
.Lx105_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S5]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx105_2:
                        test             rax, rax
                        je               .Lx105_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx105_7]
                        lea              rdx, [rip + .Lx105_8]
                        jmp              rax
.Lx105_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx105_2
.Lx105_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx105_2
.Lx105_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                        js               xchain97_n4_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx105_6]
                        sub              rsp, 8
                        push             rax
                        jmp              proc_PAT$5_γ
.Lx105_6:
                        add              rsp, 16
                        jmp              xchain97_n4_β
xchain97_n5_β:
                        mov              rsp, qword ptr [rbp + 96]
                        jmp              xchain97_n4_β
proc_PAT$5_scanhit:
cmp qword ptr [rbp + 144], 1
jne 7f
mov ecx, dword ptr [rbp + 136]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$5_γ
proc_PAT$5_scanfail:
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
jmp proc_PAT$5_attempt
8:
jmp proc_PAT$5_ω
proc_PAT$5_res:
add rsp, 8
pop rbp
proc_PAT$5_β:
jmp qword ptr [rbp + 112]
proc_PAT$5_γ:
push rbp
lea rax, [rip + proc_PAT$5_res]
push rax
mov rax, [rbp + 152]
mov rbp, [rbp + 168]
jmp rax
proc_PAT$5_ω:
mov rax, [rbp + 160]
lea rsp, [rbp + 176]
mov rbp, [rbp + 168]
jmp rax
  .globl proc_PAT$6_α
proc_PAT$6_α:
#=======================================================================================================================
    .global proc_PAT$6_α
    .global proc_PAT$6_β
    .global proc_PAT$6_γ
    .global proc_PAT$6_ω
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
proc_PAT$6_attempt:
proc_PAT$6_α_body:
lea rax, [rip + xchain106_n0_β]
mov qword ptr [rbp + 224], rax
# IR_MATCH_SEQ_NARY (SPD SEQ-STATIC: zero-counter, sigma/phi statically wired)
xchain106_n0_α:
                        mov              dword ptr [rbp + 16], r14d
                        jmp              xchain106_n1_α
xchain106_n0_as:
                        jmp              proc_PAT$6_γ
xchain106_n0_β:
                        jmp              xchain106_n3_β
xchain106_n0_af:
                        jmp              proc_PAT$6_ω
# IR_MATCH_LIT
xchain106_n1_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                        jg               proc_PAT$6_ω
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 123
                        jne              proc_PAT$6_ω
                        add              r14d, 1
                        jmp              xchain106_n2_α
xchain106_n1_β:
                        sub              r14d, 1
                        jmp              proc_PAT$6_ω
# IR_MATCH_ALT_NARY
xchain106_n2_α:
                        mov              dword ptr [rbp + 48], r14d
                        mov              dword ptr [rbp + 52], 0
                        jmp              xchain106_n4_α
xchain106_n2_as:
                        jmp              xchain106_n3_α
xchain106_n2_β:
                        mov              eax, dword ptr [rbp + 52]
                        cmp              eax, 0
                        je               xchain106_n4_β
                        jmp              xchain106_n5_β
xchain106_n2_af:
                        add              dword ptr [rbp + 52], 1
                        mov              r14d, dword ptr [rbp + 48]
                        mov              eax, dword ptr [rbp + 52]
                        cmp              eax, 1
                        je               xchain106_n5_α
                        jmp              xchain106_n1_β
# IR_MATCH_LIT
xchain106_n3_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                        jg               xchain106_n2_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 125
                        jne              xchain106_n2_β
                        add              r14d, 1
                        jmp              proc_PAT$6_γ
xchain106_n3_β:
                        sub              r14d, 1
                        jmp              xchain106_n2_β
# IR_MATCH_SEQ_NARY (SPD SEQ-STATIC: zero-counter, sigma/phi statically wired)
xchain106_n4_α:
                        mov              dword ptr [rbp + 64], r14d
                        jmp              xchain106_n6_α
xchain106_n4_as:
                        jmp              xchain106_n2_as
xchain106_n4_β:
                        jmp              xchain106_n7_β
xchain106_n4_af:
                        jmp              xchain106_n2_af
# IR_MATCH_DEFER (ZS-2 jmp-entry)
xchain106_n5_α:
# s137 SEALED defer: fence-demarked sync point (watermark in defer.pad)
                        mov              qword ptr [rbp + 208], rsp
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        cmp              eax, 3
                        jne              .Lx117_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                        jne              .Lx117_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                        jmp              .Lx117_10
.Lx117_9:
                        xor              eax, eax
.Lx117_10:
                        test             rax, rax
                        jz               .Lx117_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx117_4]
                        lea              rdx, [rip + .Lx117_5]
                        jmp              rax
.Lx117_4:
                        mov              rsp, qword ptr [rbp + 208]
                        jmp              xchain106_n2_as
.Lx117_5:
                        mov              rsp, qword ptr [rbp + 208]
                        jmp              xchain106_n2_af
.Lx117_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S3]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx117_2:
                        test             rax, rax
                        je               .Lx117_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx117_7]
                        lea              rdx, [rip + .Lx117_8]
                        jmp              rax
.Lx117_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx117_2
.Lx117_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx117_2
.Lx117_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                        js               xchain106_n2_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx117_6]
                        sub              rsp, 8
                        push             rax
                        jmp              xchain106_n2_as
.Lx117_6:
                        add              rsp, 16
                        jmp              xchain106_n2_af
xchain106_n5_β:
                        mov              rsp, qword ptr [rbp + 208]
                        jmp              xchain106_n2_af
# IR_MATCH_DEFER (ZS-2 jmp-entry)
xchain106_n6_α:
# s137 SEALED defer: fence-demarked sync point (watermark in defer.pad)
                        mov              qword ptr [rbp + 80], rsp
                        mov              rax, qword ptr [1879052416]
                        mov              rdx, qword ptr [1879052424]
                        cmp              eax, 3
                        jne              .Lx118_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                        jne              .Lx118_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                        jmp              .Lx118_10
.Lx118_9:
                        xor              eax, eax
.Lx118_10:
                        test             rax, rax
                        jz               .Lx118_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx118_4]
                        lea              rdx, [rip + .Lx118_5]
                        jmp              rax
.Lx118_4:
                        mov              rsp, qword ptr [rbp + 80]
                        jmp              xchain106_n7_α
.Lx118_5:
                        mov              rsp, qword ptr [rbp + 80]
                        jmp              xchain106_n2_af
.Lx118_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S6]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx118_2:
                        test             rax, rax
                        je               .Lx118_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx118_7]
                        lea              rdx, [rip + .Lx118_8]
                        jmp              rax
.Lx118_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx118_2
.Lx118_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx118_2
.Lx118_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                        js               xchain106_n2_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx118_6]
                        sub              rsp, 8
                        push             rax
                        jmp              xchain106_n7_α
.Lx118_6:
                        add              rsp, 16
                        jmp              xchain106_n2_af
xchain106_n6_β:
                        mov              rsp, qword ptr [rbp + 80]
                        jmp              xchain106_n2_af
# IR_MATCH_ARBNO_NARY (ZB-FC-4 rsp linked-frame-chain)
xchain106_n7_α:
                        mov              dword ptr [rbp + 112], r14d
                        mov              dword ptr [rbp + 116], r14d
                        mov              dword ptr [rbp + 120], 0
                        mov              qword ptr [rbp + 136], rsp
                        mov              qword ptr [rbp + 128], 0
                        jmp              xchain106_n2_as
xchain106_n7_β:
                        mov              r14d, dword ptr [rbp + 116]
                        mov              rax, qword ptr [rbp + 128]
                        sub              rsp, 208
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 128], rsp
                        mov              rbp, rsp
                        add              rbp, -8
                        jmp              xchain106_n8_α
xchain106_n7_as:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              r14d, eax
                        je               xchain106_n8_β
                        mov              rbp, qword ptr [rbp + 8]
                        mov              eax, dword ptr [rbp + 120]
                        add              eax, 1
                        mov              dword ptr [rbp + 120], eax
                        mov              dword ptr [rbp + 116], r14d
                        jmp              xchain106_n2_as
xchain106_n7_af:
                        mov              rax, qword ptr [rbp + 24]
                        mov              rdx, qword ptr [rbp + 8]
                        lea              rsp, [rbp + 216]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 120]
                        test             ecx, ecx
                        jz               .Lx120_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 120], ecx
                        mov              qword ptr [rbp + 128], rax
                        lea              rbp, [rax + -8]
                        jmp              xchain106_n8_β
.Lx120_2:
                        mov              r14d, dword ptr [rbp + 112]
                        mov              rsp, qword ptr [rbp + 136]
                        jmp              xchain106_n6_β
# IR_MATCH_SEQ_NARY (SPD SEQ-STATIC: zero-counter, sigma/phi statically wired)
xchain106_n8_α:
                        mov              dword ptr [rbp + 160], r14d
                        jmp              xchain106_n10_α
xchain106_n8_as:
                        jmp              xchain106_n7_as
xchain106_n8_β:
                        jmp              xchain106_n9_β
xchain106_n8_af:
                        jmp              xchain106_n7_af
# IR_MATCH_DEFER (ZS-2 jmp-entry)
xchain106_n9_α:
# s137 SEALED defer: fence-demarked sync point (watermark in defer.pad)
                        mov              qword ptr [rbp + 192], rsp
                        mov              rax, qword ptr [1879052416]
                        mov              rdx, qword ptr [1879052424]
                        cmp              eax, 3
                        jne              .Lx123_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                        jne              .Lx123_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                        jmp              .Lx123_10
.Lx123_9:
                        xor              eax, eax
.Lx123_10:
                        test             rax, rax
                        jz               .Lx123_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx123_4]
                        lea              rdx, [rip + .Lx123_5]
                        jmp              rax
.Lx123_4:
                        mov              rsp, qword ptr [rbp + 192]
                        jmp              xchain106_n7_as
.Lx123_5:
                        mov              rsp, qword ptr [rbp + 192]
                        jmp              xchain106_n10_β
.Lx123_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S6]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx123_2:
                        test             rax, rax
                        je               .Lx123_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx123_7]
                        lea              rdx, [rip + .Lx123_8]
                        jmp              rax
.Lx123_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx123_2
.Lx123_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx123_2
.Lx123_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                        js               xchain106_n10_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx123_6]
                        sub              rsp, 8
                        push             rax
                        jmp              xchain106_n7_as
.Lx123_6:
                        add              rsp, 16
                        jmp              xchain106_n10_β
xchain106_n9_β:
                        mov              rsp, qword ptr [rbp + 192]
                        jmp              xchain106_n10_β
# IR_MATCH_LIT
xchain106_n10_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                        jg               xchain106_n7_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 44
                        jne              xchain106_n7_af
                        add              r14d, 1
                        jmp              xchain106_n9_α
xchain106_n10_β:
                        sub              r14d, 1
                        jmp              xchain106_n7_af
proc_PAT$6_scanhit:
cmp qword ptr [rbp + 256], 1
jne 7f
mov ecx, dword ptr [rbp + 248]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$6_γ
proc_PAT$6_scanfail:
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
jmp proc_PAT$6_attempt
8:
jmp proc_PAT$6_ω
proc_PAT$6_res:
add rsp, 8
pop rbp
proc_PAT$6_β:
jmp qword ptr [rbp + 224]
proc_PAT$6_γ:
push rbp
lea rax, [rip + proc_PAT$6_res]
push rax
mov rax, [rbp + 264]
mov rbp, [rbp + 280]
jmp rax
proc_PAT$6_ω:
mov rax, [rbp + 272]
lea rsp, [rbp + 288]
mov rbp, [rbp + 280]
jmp rax
  .globl proc_PAT$7_α
proc_PAT$7_α:
#=======================================================================================================================
    .global proc_PAT$7_α
    .global proc_PAT$7_β
    .global proc_PAT$7_γ
    .global proc_PAT$7_ω
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
proc_PAT$7_attempt:
proc_PAT$7_α_body:
lea rax, [rip + xchain126_n0_β]
mov qword ptr [rbp + 224], rax
# IR_MATCH_SEQ_NARY (SPD SEQ-STATIC: zero-counter, sigma/phi statically wired)
xchain126_n0_α:
                        mov              dword ptr [rbp + 16], r14d
                        jmp              xchain126_n1_α
xchain126_n0_as:
                        jmp              proc_PAT$7_γ
xchain126_n0_β:
                        jmp              xchain126_n3_β
xchain126_n0_af:
                        jmp              proc_PAT$7_ω
# IR_MATCH_LIT
xchain126_n1_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                        jg               proc_PAT$7_ω
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 91
                        jne              proc_PAT$7_ω
                        add              r14d, 1
                        jmp              xchain126_n2_α
xchain126_n1_β:
                        sub              r14d, 1
                        jmp              proc_PAT$7_ω
# IR_MATCH_ALT_NARY
xchain126_n2_α:
                        mov              dword ptr [rbp + 48], r14d
                        mov              dword ptr [rbp + 52], 0
                        jmp              xchain126_n4_α
xchain126_n2_as:
                        jmp              xchain126_n3_α
xchain126_n2_β:
                        mov              eax, dword ptr [rbp + 52]
                        cmp              eax, 0
                        je               xchain126_n4_β
                        jmp              xchain126_n5_β
xchain126_n2_af:
                        add              dword ptr [rbp + 52], 1
                        mov              r14d, dword ptr [rbp + 48]
                        mov              eax, dword ptr [rbp + 52]
                        cmp              eax, 1
                        je               xchain126_n5_α
                        jmp              xchain126_n1_β
# IR_MATCH_LIT
xchain126_n3_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                        jg               xchain126_n2_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 93
                        jne              xchain126_n2_β
                        add              r14d, 1
                        jmp              proc_PAT$7_γ
xchain126_n3_β:
                        sub              r14d, 1
                        jmp              xchain126_n2_β
# IR_MATCH_SEQ_NARY (SPD SEQ-STATIC: zero-counter, sigma/phi statically wired)
xchain126_n4_α:
                        mov              dword ptr [rbp + 64], r14d
                        jmp              xchain126_n6_α
xchain126_n4_as:
                        jmp              xchain126_n2_as
xchain126_n4_β:
                        jmp              xchain126_n7_β
xchain126_n4_af:
                        jmp              xchain126_n2_af
# IR_MATCH_DEFER (ZS-2 jmp-entry)
xchain126_n5_α:
# s137 SEALED defer: fence-demarked sync point (watermark in defer.pad)
                        mov              qword ptr [rbp + 208], rsp
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        cmp              eax, 3
                        jne              .Lx137_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                        jne              .Lx137_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                        jmp              .Lx137_10
.Lx137_9:
                        xor              eax, eax
.Lx137_10:
                        test             rax, rax
                        jz               .Lx137_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx137_4]
                        lea              rdx, [rip + .Lx137_5]
                        jmp              rax
.Lx137_4:
                        mov              rsp, qword ptr [rbp + 208]
                        jmp              xchain126_n2_as
.Lx137_5:
                        mov              rsp, qword ptr [rbp + 208]
                        jmp              xchain126_n2_af
.Lx137_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S3]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx137_2:
                        test             rax, rax
                        je               .Lx137_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx137_7]
                        lea              rdx, [rip + .Lx137_8]
                        jmp              rax
.Lx137_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx137_2
.Lx137_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx137_2
.Lx137_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                        js               xchain126_n2_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx137_6]
                        sub              rsp, 8
                        push             rax
                        jmp              xchain126_n2_as
.Lx137_6:
                        add              rsp, 16
                        jmp              xchain126_n2_af
xchain126_n5_β:
                        mov              rsp, qword ptr [rbp + 208]
                        jmp              xchain126_n2_af
# IR_MATCH_DEFER (ZS-2 jmp-entry)
xchain126_n6_α:
# s137 SEALED defer: fence-demarked sync point (watermark in defer.pad)
                        mov              qword ptr [rbp + 80], rsp
                        mov              rax, qword ptr [1879052480]
                        mov              rdx, qword ptr [1879052488]
                        cmp              eax, 3
                        jne              .Lx138_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                        jne              .Lx138_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                        jmp              .Lx138_10
.Lx138_9:
                        xor              eax, eax
.Lx138_10:
                        test             rax, rax
                        jz               .Lx138_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx138_4]
                        lea              rdx, [rip + .Lx138_5]
                        jmp              rax
.Lx138_4:
                        mov              rsp, qword ptr [rbp + 80]
                        jmp              xchain126_n7_α
.Lx138_5:
                        mov              rsp, qword ptr [rbp + 80]
                        jmp              xchain126_n2_af
.Lx138_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S5]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx138_2:
                        test             rax, rax
                        je               .Lx138_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx138_7]
                        lea              rdx, [rip + .Lx138_8]
                        jmp              rax
.Lx138_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx138_2
.Lx138_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx138_2
.Lx138_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                        js               xchain126_n2_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx138_6]
                        sub              rsp, 8
                        push             rax
                        jmp              xchain126_n7_α
.Lx138_6:
                        add              rsp, 16
                        jmp              xchain126_n2_af
xchain126_n6_β:
                        mov              rsp, qword ptr [rbp + 80]
                        jmp              xchain126_n2_af
# IR_MATCH_ARBNO_NARY (ZB-FC-4 rsp linked-frame-chain)
xchain126_n7_α:
                        mov              dword ptr [rbp + 112], r14d
                        mov              dword ptr [rbp + 116], r14d
                        mov              dword ptr [rbp + 120], 0
                        mov              qword ptr [rbp + 136], rsp
                        mov              qword ptr [rbp + 128], 0
                        jmp              xchain126_n2_as
xchain126_n7_β:
                        mov              r14d, dword ptr [rbp + 116]
                        mov              rax, qword ptr [rbp + 128]
                        sub              rsp, 208
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 128], rsp
                        mov              rbp, rsp
                        add              rbp, -8
                        jmp              xchain126_n8_α
xchain126_n7_as:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              r14d, eax
                        je               xchain126_n8_β
                        mov              rbp, qword ptr [rbp + 8]
                        mov              eax, dword ptr [rbp + 120]
                        add              eax, 1
                        mov              dword ptr [rbp + 120], eax
                        mov              dword ptr [rbp + 116], r14d
                        jmp              xchain126_n2_as
xchain126_n7_af:
                        mov              rax, qword ptr [rbp + 24]
                        mov              rdx, qword ptr [rbp + 8]
                        lea              rsp, [rbp + 216]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 120]
                        test             ecx, ecx
                        jz               .Lx140_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 120], ecx
                        mov              qword ptr [rbp + 128], rax
                        lea              rbp, [rax + -8]
                        jmp              xchain126_n8_β
.Lx140_2:
                        mov              r14d, dword ptr [rbp + 112]
                        mov              rsp, qword ptr [rbp + 136]
                        jmp              xchain126_n6_β
# IR_MATCH_SEQ_NARY (SPD SEQ-STATIC: zero-counter, sigma/phi statically wired)
xchain126_n8_α:
                        mov              dword ptr [rbp + 160], r14d
                        jmp              xchain126_n10_α
xchain126_n8_as:
                        jmp              xchain126_n7_as
xchain126_n8_β:
                        jmp              xchain126_n9_β
xchain126_n8_af:
                        jmp              xchain126_n7_af
# IR_MATCH_DEFER (ZS-2 jmp-entry)
xchain126_n9_α:
# s137 SEALED defer: fence-demarked sync point (watermark in defer.pad)
                        mov              qword ptr [rbp + 192], rsp
                        mov              rax, qword ptr [1879052480]
                        mov              rdx, qword ptr [1879052488]
                        cmp              eax, 3
                        jne              .Lx143_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                        jne              .Lx143_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                        jmp              .Lx143_10
.Lx143_9:
                        xor              eax, eax
.Lx143_10:
                        test             rax, rax
                        jz               .Lx143_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx143_4]
                        lea              rdx, [rip + .Lx143_5]
                        jmp              rax
.Lx143_4:
                        mov              rsp, qword ptr [rbp + 192]
                        jmp              xchain126_n7_as
.Lx143_5:
                        mov              rsp, qword ptr [rbp + 192]
                        jmp              xchain126_n10_β
.Lx143_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S5]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx143_2:
                        test             rax, rax
                        je               .Lx143_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx143_7]
                        lea              rdx, [rip + .Lx143_8]
                        jmp              rax
.Lx143_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx143_2
.Lx143_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx143_2
.Lx143_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                        js               xchain126_n10_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx143_6]
                        sub              rsp, 8
                        push             rax
                        jmp              xchain126_n7_as
.Lx143_6:
                        add              rsp, 16
                        jmp              xchain126_n10_β
xchain126_n9_β:
                        mov              rsp, qword ptr [rbp + 192]
                        jmp              xchain126_n10_β
# IR_MATCH_LIT
xchain126_n10_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                        jg               xchain126_n7_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 44
                        jne              xchain126_n7_af
                        add              r14d, 1
                        jmp              xchain126_n9_α
xchain126_n10_β:
                        sub              r14d, 1
                        jmp              xchain126_n7_af
proc_PAT$7_scanhit:
cmp qword ptr [rbp + 256], 1
jne 7f
mov ecx, dword ptr [rbp + 248]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$7_γ
proc_PAT$7_scanfail:
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
jmp proc_PAT$7_attempt
8:
jmp proc_PAT$7_ω
proc_PAT$7_res:
add rsp, 8
pop rbp
proc_PAT$7_β:
jmp qword ptr [rbp + 224]
proc_PAT$7_γ:
push rbp
lea rax, [rip + proc_PAT$7_res]
push rax
mov rax, [rbp + 264]
mov rbp, [rbp + 280]
jmp rax
proc_PAT$7_ω:
mov rax, [rbp + 272]
lea rsp, [rbp + 288]
mov rbp, [rbp + 280]
jmp rax
  .globl proc_PAT$8_α
proc_PAT$8_α:
#=======================================================================================================================
    .global proc_PAT$8_α
    .global proc_PAT$8_β
    .global proc_PAT$8_γ
    .global proc_PAT$8_ω
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
proc_PAT$8_attempt:
proc_PAT$8_α_body:
lea rax, [rip + xchain146_n0_β]
mov qword ptr [rbp + 112], rax
# IR_MATCH_ALT_NARY
xchain146_n0_α:
                        mov              dword ptr [rbp + 16], r14d
                        mov              dword ptr [rbp + 20], 0
                        jmp              xchain146_n1_α
xchain146_n0_as:
                        jmp              proc_PAT$8_γ
xchain146_n0_β:
                        mov              eax, dword ptr [rbp + 20]
                        cmp              eax, 0
                        je               xchain146_n1_β
                        cmp              eax, 1
                        je               xchain146_n2_β
                        cmp              eax, 2
                        je               xchain146_n3_β
                        cmp              eax, 3
                        je               xchain146_n4_β
                        cmp              eax, 4
                        je               xchain146_n5_β
                        cmp              eax, 5
                        je               xchain146_n6_β
                        jmp              xchain146_n7_β
xchain146_n0_af:
                        add              dword ptr [rbp + 20], 1
                        mov              r14d, dword ptr [rbp + 16]
                        mov              eax, dword ptr [rbp + 20]
                        cmp              eax, 1
                        je               xchain146_n2_α
                        cmp              eax, 2
                        je               xchain146_n3_α
                        cmp              eax, 3
                        je               xchain146_n4_α
                        cmp              eax, 4
                        je               xchain146_n5_α
                        cmp              eax, 5
                        je               xchain146_n6_α
                        cmp              eax, 6
                        je               xchain146_n7_α
                        jmp              proc_PAT$8_ω
# IR_MATCH_DEFER (ZS-2 jmp-entry)
xchain146_n1_α:
                        lea              rsi, [rip + g_sno_defer_cells+32]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                        jne              .Lx149_11
                        mov              rax, qword ptr [1879052384]
                        mov              rdx, qword ptr [1879052392]
                        cmp              eax, 3
                        jne              .Lx149_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                        jne              .Lx149_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                        jmp              .Lx149_10
.Lx149_9:
                        xor              eax, eax
.Lx149_10:
                        lea              rsi, [rip + g_sno_defer_cells+32]
                        mov              qword ptr [rsi + 0], rax
.Lx149_11:
                        test             rax, rax
                        jz               .Lx149_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx149_4]
                        lea              rdx, [rip + .Lx149_5]
                        jmp              rax
.Lx149_4:
                        jmp              xchain146_n0_as
.Lx149_5:
                        jmp              xchain146_n0_af
.Lx149_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S4]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx149_2:
                        test             rax, rax
                        je               .Lx149_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx149_7]
                        lea              rdx, [rip + .Lx149_8]
                        jmp              rax
.Lx149_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx149_2
.Lx149_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx149_2
.Lx149_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                        js               xchain146_n0_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx149_6]
                        sub              rsp, 8
                        push             rax
                        jmp              xchain146_n0_as
.Lx149_6:
                        add              rsp, 16
                        jmp              xchain146_n0_af
xchain146_n1_β:
                        jmp              qword ptr [rsp]
# IR_MATCH_DEFER (ZS-2 jmp-entry)
xchain146_n2_α:
# s137 SEALED defer: fence-demarked sync point (watermark in defer.pad)
                        mov              qword ptr [rbp + 48], rsp
                        mov              rax, qword ptr [1879052400]
                        mov              rdx, qword ptr [1879052408]
                        cmp              eax, 3
                        jne              .Lx150_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                        jne              .Lx150_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                        jmp              .Lx150_10
.Lx150_9:
                        xor              eax, eax
.Lx150_10:
                        test             rax, rax
                        jz               .Lx150_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx150_4]
                        lea              rdx, [rip + .Lx150_5]
                        jmp              rax
.Lx150_4:
                        mov              rsp, qword ptr [rbp + 48]
                        jmp              xchain146_n0_as
.Lx150_5:
                        mov              rsp, qword ptr [rbp + 48]
                        jmp              xchain146_n0_af
.Lx150_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S7]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx150_2:
                        test             rax, rax
                        je               .Lx150_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx150_7]
                        lea              rdx, [rip + .Lx150_8]
                        jmp              rax
.Lx150_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx150_2
.Lx150_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx150_2
.Lx150_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                        js               xchain146_n0_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx150_6]
                        sub              rsp, 8
                        push             rax
                        jmp              xchain146_n0_as
.Lx150_6:
                        add              rsp, 16
                        jmp              xchain146_n0_af
xchain146_n2_β:
                        mov              rsp, qword ptr [rbp + 48]
                        jmp              xchain146_n0_af
# IR_MATCH_DEFER (ZS-2 jmp-entry)
xchain146_n3_α:
                        lea              rsi, [rip + g_sno_defer_cells+40]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                        jne              .Lx151_11
                        mov              rax, qword ptr [1879052432]
                        mov              rdx, qword ptr [1879052440]
                        cmp              eax, 3
                        jne              .Lx151_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                        jne              .Lx151_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                        jmp              .Lx151_10
.Lx151_9:
                        xor              eax, eax
.Lx151_10:
                        lea              rsi, [rip + g_sno_defer_cells+40]
                        mov              qword ptr [rsi + 0], rax
.Lx151_11:
                        test             rax, rax
                        jz               .Lx151_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx151_4]
                        lea              rdx, [rip + .Lx151_5]
                        jmp              rax
.Lx151_4:
                        jmp              xchain146_n0_as
.Lx151_5:
                        jmp              xchain146_n0_af
.Lx151_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S8]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx151_2:
                        test             rax, rax
                        je               .Lx151_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx151_7]
                        lea              rdx, [rip + .Lx151_8]
                        jmp              rax
.Lx151_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx151_2
.Lx151_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx151_2
.Lx151_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                        js               xchain146_n0_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx151_6]
                        sub              rsp, 8
                        push             rax
                        jmp              xchain146_n0_as
.Lx151_6:
                        add              rsp, 16
                        jmp              xchain146_n0_af
xchain146_n3_β:
                        jmp              qword ptr [rsp]
# IR_MATCH_DEFER (ZS-2 jmp-entry)
xchain146_n4_α:
                        lea              rsi, [rip + g_sno_defer_cells+48]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                        jne              .Lx152_11
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        cmp              eax, 3
                        jne              .Lx152_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                        jne              .Lx152_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                        jmp              .Lx152_10
.Lx152_9:
                        xor              eax, eax
.Lx152_10:
                        lea              rsi, [rip + g_sno_defer_cells+48]
                        mov              qword ptr [rsi + 0], rax
.Lx152_11:
                        test             rax, rax
                        jz               .Lx152_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx152_4]
                        lea              rdx, [rip + .Lx152_5]
                        jmp              rax
.Lx152_4:
                        jmp              xchain146_n0_as
.Lx152_5:
                        jmp              xchain146_n0_af
.Lx152_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S9]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx152_2:
                        test             rax, rax
                        je               .Lx152_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx152_7]
                        lea              rdx, [rip + .Lx152_8]
                        jmp              rax
.Lx152_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx152_2
.Lx152_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx152_2
.Lx152_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                        js               xchain146_n0_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx152_6]
                        sub              rsp, 8
                        push             rax
                        jmp              xchain146_n0_as
.Lx152_6:
                        add              rsp, 16
                        jmp              xchain146_n0_af
xchain146_n4_β:
                        jmp              qword ptr [rsp]
# IR_MATCH_LIT
xchain146_n5_α:
                        mov              eax, r14d
                        add              eax, 4
                        cmp              eax, r15d
                        jg               xchain146_n0_af
                        movsxd           rcx, r14d
                        mov              edx, dword ptr [r13+rcx]
                        cmp              edx, 1702195828
                        jne              xchain146_n0_af
                        add              r14d, 4
                        jmp              xchain146_n0_as
xchain146_n5_β:
                        sub              r14d, 4
                        jmp              xchain146_n0_af
# IR_MATCH_LIT
xchain146_n6_α:
                        mov              eax, r14d
                        add              eax, 5
                        cmp              eax, r15d
                        jg               xchain146_n0_af
                        movsxd           rcx, r14d
                        mov              edx, dword ptr [r13+rcx]
                        cmp              edx, 1936482662
                        jne              xchain146_n0_af
                        movzx            eax, byte ptr [r13+rcx+4]
                        cmp              eax, 101
                        jne              xchain146_n0_af
                        add              r14d, 5
                        jmp              xchain146_n0_as
xchain146_n6_β:
                        sub              r14d, 5
                        jmp              xchain146_n0_af
# IR_MATCH_LIT
xchain146_n7_α:
                        mov              eax, r14d
                        add              eax, 4
                        cmp              eax, r15d
                        jg               xchain146_n0_af
                        movsxd           rcx, r14d
                        mov              edx, dword ptr [r13+rcx]
                        cmp              edx, 1819047278
                        jne              xchain146_n0_af
                        add              r14d, 4
                        jmp              xchain146_n0_as
xchain146_n7_β:
                        sub              r14d, 4
                        jmp              xchain146_n0_af
proc_PAT$8_scanhit:
cmp qword ptr [rbp + 144], 1
jne 7f
mov ecx, dword ptr [rbp + 136]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$8_γ
proc_PAT$8_scanfail:
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
jmp proc_PAT$8_attempt
8:
jmp proc_PAT$8_ω
proc_PAT$8_res:
add rsp, 8
pop rbp
proc_PAT$8_β:
jmp qword ptr [rbp + 112]
proc_PAT$8_γ:
push rbp
lea rax, [rip + proc_PAT$8_res]
push rax
mov rax, [rbp + 152]
mov rbp, [rbp + 168]
jmp rax
proc_PAT$8_ω:
mov rax, [rbp + 160]
lea rsp, [rbp + 176]
mov rbp, [rbp + 168]
jmp rax
  .globl proc_PAT$9_α
proc_PAT$9_α:
#=======================================================================================================================
    .global proc_PAT$9_α
    .global proc_PAT$9_β
    .global proc_PAT$9_γ
    .global proc_PAT$9_ω
  sub rsp, 144
  mov [rsp + 120], rcx
  mov [rsp + 128], rdx
  mov [rsp + 136], rbp
  mov rbp, rsp
  mov qword ptr [rsp], 0
  mov qword ptr [rsp + 8], 0
  mov qword ptr [rsp + 80], 0
  mov qword ptr [rsp + 88], 0
  mov qword ptr [rsp + 96], 0
  mov qword ptr [rsp + 104], rsp
mov qword ptr [rbp + 112], r8
mov dword ptr [rbp + 104], r14d
proc_PAT$9_attempt:
proc_PAT$9_α_body:
lea rax, [rip + proc_PAT$9_ω]
mov qword ptr [rbp + 80], rax
# IR_MATCH_SEQ_NARY (SPD SEQ-STATIC: zero-counter, sigma/phi statically wired)
xchain159_n0_α:
                        mov              dword ptr [rbp + 16], r14d
                        jmp              xchain159_n1_α
xchain159_n0_as:
                        jmp              proc_PAT$9_γ
xchain159_n0_β:
                        jmp              xchain159_n3_β
xchain159_n0_af:
                        jmp              proc_PAT$9_ω
# IR_MATCH_DEFER (ZS-2 jmp-entry)
xchain159_n1_α:
# s137 SEALED defer: fence-demarked sync point (watermark in defer.pad)
                        mov              qword ptr [rbp + 32], rsp
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        cmp              eax, 3
                        jne              .Lx162_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                        jne              .Lx162_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                        jmp              .Lx162_10
.Lx162_9:
                        xor              eax, eax
.Lx162_10:
                        test             rax, rax
                        jz               .Lx162_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx162_4]
                        lea              rdx, [rip + .Lx162_5]
                        jmp              rax
.Lx162_4:
                        mov              rsp, qword ptr [rbp + 32]
                        jmp              xchain159_n2_α
.Lx162_5:
                        mov              rsp, qword ptr [rbp + 32]
                        jmp              proc_PAT$9_ω
.Lx162_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S3]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx162_2:
                        test             rax, rax
                        je               .Lx162_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx162_7]
                        lea              rdx, [rip + .Lx162_8]
                        jmp              rax
.Lx162_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx162_2
.Lx162_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx162_2
.Lx162_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                        js               proc_PAT$9_ω
                        mov              r14d, eax
                        lea              rax, [rip + .Lx162_6]
                        sub              rsp, 8
                        push             rax
                        jmp              xchain159_n2_α
.Lx162_6:
                        add              rsp, 16
                        jmp              proc_PAT$9_ω
xchain159_n1_β:
                        mov              rsp, qword ptr [rbp + 32]
                        jmp              proc_PAT$9_ω
# IR_MATCH_DEFER (ZS-2 jmp-entry)
xchain159_n2_α:
                        lea              rsi, [rip + g_sno_defer_cells+56]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                        jne              .Lx163_11
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        cmp              eax, 3
                        jne              .Lx163_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                        jne              .Lx163_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                        jmp              .Lx163_10
.Lx163_9:
                        xor              eax, eax
.Lx163_10:
                        lea              rsi, [rip + g_sno_defer_cells+56]
                        mov              qword ptr [rsi + 0], rax
.Lx163_11:
                        test             rax, rax
                        jz               .Lx163_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx163_4]
                        lea              rdx, [rip + .Lx163_5]
                        jmp              rax
.Lx163_4:
                        jmp              xchain159_n3_α
.Lx163_5:
                        jmp              xchain159_n1_β
.Lx163_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S10]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx163_2:
                        test             rax, rax
                        je               .Lx163_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx163_7]
                        lea              rdx, [rip + .Lx163_8]
                        jmp              rax
.Lx163_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx163_2
.Lx163_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx163_2
.Lx163_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                        js               xchain159_n1_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx163_6]
                        sub              rsp, 8
                        push             rax
                        jmp              xchain159_n3_α
.Lx163_6:
                        add              rsp, 16
                        jmp              xchain159_n1_β
xchain159_n2_β:
                        jmp              qword ptr [rsp]
# IR_MATCH_DEFER (ZS-2 jmp-entry)
xchain159_n3_α:
# s137 SEALED defer: fence-demarked sync point (watermark in defer.pad)
                        mov              qword ptr [rbp + 64], rsp
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        cmp              eax, 3
                        jne              .Lx164_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                        jne              .Lx164_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                        jmp              .Lx164_10
.Lx164_9:
                        xor              eax, eax
.Lx164_10:
                        test             rax, rax
                        jz               .Lx164_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx164_4]
                        lea              rdx, [rip + .Lx164_5]
                        jmp              rax
.Lx164_4:
                        mov              rsp, qword ptr [rbp + 64]
                        jmp              proc_PAT$9_γ
.Lx164_5:
                        mov              rsp, qword ptr [rbp + 64]
                        jmp              xchain159_n2_β
.Lx164_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S3]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx164_2:
                        test             rax, rax
                        je               .Lx164_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx164_7]
                        lea              rdx, [rip + .Lx164_8]
                        jmp              rax
.Lx164_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx164_2
.Lx164_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx164_2
.Lx164_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                        js               xchain159_n2_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx164_6]
                        sub              rsp, 8
                        push             rax
                        jmp              proc_PAT$9_γ
.Lx164_6:
                        add              rsp, 16
                        jmp              xchain159_n2_β
xchain159_n3_β:
                        mov              rsp, qword ptr [rbp + 64]
                        jmp              xchain159_n2_β
proc_PAT$9_scanhit:
cmp qword ptr [rbp + 112], 1
jne 7f
mov ecx, dword ptr [rbp + 104]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$9_γ
proc_PAT$9_scanfail:
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
jmp proc_PAT$9_attempt
8:
jmp proc_PAT$9_ω
proc_PAT$9_res:
add rsp, 8
pop rbp
proc_PAT$9_β:
jmp qword ptr [rbp + 80]
proc_PAT$9_γ:
push rbp
lea rax, [rip + proc_PAT$9_res]
push rax
mov rax, [rbp + 120]
mov rbp, [rbp + 136]
jmp rax
proc_PAT$9_ω:
mov rax, [rbp + 128]
lea rsp, [rbp + 144]
mov rbp, [rbp + 136]
jmp rax
  .globl proc_PAT$10_α
proc_PAT$10_α:
#=======================================================================================================================
    .global proc_PAT$10_α
    .global proc_PAT$10_β
    .global proc_PAT$10_γ
    .global proc_PAT$10_ω
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
proc_PAT$10_attempt:
proc_PAT$10_α_body:
lea rax, [rip + xchain165_n0_β]
mov qword ptr [rbp + 128], rax
# IR_MATCH_SEQ_NARY (SPD SEQ-STATIC: zero-counter, sigma/phi statically wired)
xchain165_n0_α:
                        mov              dword ptr [rbp + 16], r14d
                        jmp              xchain165_n1_α
xchain165_n0_as:
                        jmp              proc_PAT$10_γ
xchain165_n0_β:
                        jmp              xchain165_n5_β
xchain165_n0_af:
                        jmp              proc_PAT$10_ω
# IR_LIT_INTEGER
xchain165_n1_α:
                        mov              qword ptr [rbp + 48], 6
                        mov              rax, qword ptr [rip + .Lx168_0]
                        mov              qword ptr [rbp + 56], rax
                        jmp              xchain165_n2_α
xchain165_n1_β:
                        jmp              proc_PAT$10_ω
.Lx168_0:
                        .quad            0
# IR_MATCH_POS
xchain165_n2_α:
                        mov              rax, 0
                        cmp              r14d, eax
                        jne              proc_PAT$10_ω
                        jmp              xchain165_n3_α
xchain165_n2_β:
                        jmp              proc_PAT$10_ω
# IR_MATCH_DEFER (ZS-2 jmp-entry)
xchain165_n3_α:
# s137 SEALED defer: fence-demarked sync point (watermark in defer.pad)
                        mov              qword ptr [rbp + 80], rsp
                        mov              rax, qword ptr [1879052480]
                        mov              rdx, qword ptr [1879052488]
                        cmp              eax, 3
                        jne              .Lx170_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                        jne              .Lx170_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                        jmp              .Lx170_10
.Lx170_9:
                        xor              eax, eax
.Lx170_10:
                        test             rax, rax
                        jz               .Lx170_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx170_4]
                        lea              rdx, [rip + .Lx170_5]
                        jmp              rax
.Lx170_4:
                        mov              rsp, qword ptr [rbp + 80]
                        jmp              xchain165_n4_α
.Lx170_5:
                        mov              rsp, qword ptr [rbp + 80]
                        jmp              proc_PAT$10_ω
.Lx170_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S5]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx170_2:
                        test             rax, rax
                        je               .Lx170_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx170_7]
                        lea              rdx, [rip + .Lx170_8]
                        jmp              rax
.Lx170_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx170_2
.Lx170_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx170_2
.Lx170_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                        js               proc_PAT$10_ω
                        mov              r14d, eax
                        lea              rax, [rip + .Lx170_6]
                        sub              rsp, 8
                        push             rax
                        jmp              xchain165_n4_α
.Lx170_6:
                        add              rsp, 16
                        jmp              proc_PAT$10_ω
xchain165_n3_β:
                        mov              rsp, qword ptr [rbp + 80]
                        jmp              proc_PAT$10_ω
# IR_LIT_INTEGER
xchain165_n4_α:
                        mov              qword ptr [rbp + 96], 6
                        mov              rax, qword ptr [rip + .Lx171_0]
                        mov              qword ptr [rbp + 104], rax
                        jmp              xchain165_n5_α
xchain165_n4_β:
                        jmp              xchain165_n3_β
.Lx171_0:
                        .quad            0
# IR_MATCH_RPOS
xchain165_n5_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                        jne              xchain165_n3_β
                        jmp              proc_PAT$10_γ
xchain165_n5_β:
                        jmp              xchain165_n3_β
proc_PAT$10_scanhit:
cmp qword ptr [rbp + 160], 1
jne 7f
mov ecx, dword ptr [rbp + 152]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$10_γ
proc_PAT$10_scanfail:
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
jmp proc_PAT$10_attempt
8:
jmp proc_PAT$10_ω
proc_PAT$10_res:
add rsp, 8
pop rbp
proc_PAT$10_β:
jmp qword ptr [rbp + 128]
proc_PAT$10_γ:
push rbp
lea rax, [rip + proc_PAT$10_res]
push rax
mov rax, [rbp + 168]
mov rbp, [rbp + 184]
jmp rax
proc_PAT$10_ω:
mov rax, [rbp + 176]
lea rsp, [rbp + 192]
mov rbp, [rbp + 184]
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
  mov esi, 96
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
  mov esi, 64
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
  mov esi, 304
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1
  call rt_proc_set_zstatic@PLT
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
  mov esi, 128
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname4: .string "PAT$4"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname4]
  lea rsi, [rip + proc_PAT$4_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 224
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname5: .string "PAT$5"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname5]
  lea rsi, [rip + proc_PAT$5_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 144
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname6: .string "PAT$6"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname6]
  lea rsi, [rip + proc_PAT$6_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname6]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname6]
  mov esi, 256
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname6]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname7: .string "PAT$7"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname7]
  lea rsi, [rip + proc_PAT$7_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname7]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname7]
  mov esi, 256
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname7]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname8: .string "PAT$8"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname8]
  lea rsi, [rip + proc_PAT$8_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname8]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname8]
  mov esi, 144
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname8]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname9: .string "PAT$9"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname9]
  lea rsi, [rip + proc_PAT$9_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname9]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname9]
  mov esi, 112
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname9]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname10: .string "PAT$10"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname10]
  lea rsi, [rip + proc_PAT$10_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname10]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname10]
  mov esi, 160
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname10]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  add rsp, 8
  ret
  .section .rodata
  .Lgvan0: .string "bslash"
  .Lgvan1: .string "ws"
  .Lgvan2: .string "hex"
  .Lgvan3: .string "dig"
  .Lgvan4: .string "jescape"
  .Lgvan5: .string "jchunk"
  .Lgvan6: .string "jstring"
  .Lgvan7: .string "jnumber"
  .Lgvan8: .string "jmember"
  .Lgvan9: .string "jobject"
  .Lgvan10: .string "jarray"
  .Lgvan11: .string "jvalue"
  .Lgvan12: .string "jelement"
  .Lgvan13: .string "json"
  .Lgvan14: .string "src"
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
  .section .text
  .intel_syntax noprefix
  .globl main
main:
  sub rsp, 8
  push rdi
  push rsi
  call core_lib_init@PLT
  call proc_startup
  mov edi, 15
  call rt_gva_island@PLT
  mov rsi, rax
  lea rdi, [rip + __gva_names]
  mov edx, 15
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
  mov qword ptr [rsp + 2072], rsp
  mov r12, qword ptr [1879048192]
  mov [rsp + 65536], rbp
  mov rbp, rsp
main_α_body:
#                 bslash         =  CHAR(92)
# IR_LIT_INTEGER
xchain173_n0_α:
                        mov              qword ptr [rbp + 160], 6
                        mov              rax, qword ptr [rip + .Lx174_0]
                        mov              qword ptr [rbp + 168], rax
                        jmp              xchain173_n1_α
.Lx174_0:
                        .quad            92
xchain173_n1_α:
# BOX CALL CHAR(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [zr+160] -> [zr+128]
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 136], rax
                        .section         .rodata
.Lbynamefn96:           .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn96]
                        lea              rsi, [rbp + 128]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                        je               xchain173_n3_α
                        jmp              xchain173_n2_α
xchain173_n1_β:
                        jmp              xchain173_n3_α
# IR_ASSIGN gva
xchain173_n2_α:
                        mov              rax, qword ptr [rbp + 112]
                        mov              rdx, qword ptr [rbp + 120]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        jmp              xchain173_n3_α
#                 ws             =  FENCE(SPAN(' ' CHAR(9) CHAR(10) CHAR(13)) | '')
# IR_LIT_STRING
xchain173_n3_α:
                        mov              qword ptr [rbp + 256], 1
                        mov              rax, qword ptr [rip + .Lx177_0]
                        mov              qword ptr [rbp + 264], rax
                        jmp              xchain173_n4_α
.Lx177_0:
                        .quad            .Lx177_0_s
.Lx177_0_s:
                        .string          "PAT$0"
xchain173_n4_α:
# BOX IR_CALL SNO$MKPAT(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+256] -> [zr+224]
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 232], rax
                        .section         .rodata
.Lrkfn179:              .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn179]
                        lea              rsi, [rbp + 224]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 99
                        je               xchain173_n6_α
                        jmp              xchain173_n5_α
xchain173_n4_β:
                        jmp              xchain173_n6_α
# IR_ASSIGN gva
xchain173_n5_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        mov              qword ptr [1879052304], rax
                        mov              qword ptr [1879052312], rdx
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        jmp              xchain173_n6_α
#                 hex            =  '0123456789abcdefABCDEF'
# IR_LIT_STRING
xchain173_n6_α:
                        mov              qword ptr [rbp + 304], 1
                        mov              rax, qword ptr [rip + .Lx181_0]
                        mov              qword ptr [rbp + 312], rax
                        jmp              xchain173_n7_α
.Lx181_0:
                        .quad            .Lx181_0_s
.Lx181_0_s:
                        .string          "0123456789abcdefABCDEF"
# IR_ASSIGN gva
xchain173_n7_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        mov              qword ptr [1879052320], rax
                        mov              qword ptr [1879052328], rdx
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        jmp              xchain173_n8_α
#                 dig            =  '0123456789'
# IR_LIT_STRING
xchain173_n8_α:
                        mov              qword ptr [rbp + 352], 1
                        mov              rax, qword ptr [rip + .Lx183_0]
                        mov              qword ptr [rbp + 360], rax
                        jmp              xchain173_n9_α
.Lx183_0:
                        .quad            .Lx183_0_s
.Lx183_0_s:
                        .string          "0123456789"
# IR_ASSIGN gva
xchain173_n9_α:
                        mov              rax, qword ptr [rbp + 352]
                        mov              rdx, qword ptr [rbp + 360]
                        mov              qword ptr [1879052336], rax
                        mov              qword ptr [1879052344], rdx
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        jmp              xchain173_n10_α
#                 jescape        =  bslash
# IR_LIT_STRING
xchain173_n10_α:
                        mov              qword ptr [rbp + 448], 1
                        mov              rax, qword ptr [rip + .Lx185_0]
                        mov              qword ptr [rbp + 456], rax
                        jmp              xchain173_n11_α
.Lx185_0:
                        .quad            .Lx185_0_s
.Lx185_0_s:
                        .string          "PAT$3"
xchain173_n11_α:
# BOX IR_CALL SNO$MKPAT(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+448] -> [zr+416]
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 424], rax
                        .section         .rodata
.Lrkfn187:              .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn187]
                        lea              rsi, [rbp + 416]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 99
                        je               xchain173_n13_α
                        jmp              xchain173_n12_α
xchain173_n11_β:
                        jmp              xchain173_n13_α
# IR_ASSIGN gva
xchain173_n12_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              rdx, qword ptr [rbp + 408]
                        mov              qword ptr [1879052352], rax
                        mov              qword ptr [1879052360], rdx
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        jmp              xchain173_n13_α
#                 jchunk         =  BREAK('"\' CHAR(10) CHAR(13))
# IR_LIT_STRING
xchain173_n13_α:
                        mov              qword ptr [rbp + 544], 1
                        mov              rax, qword ptr [rip + .Lx189_0]
                        mov              qword ptr [rbp + 552], rax
                        jmp              xchain173_n14_α
.Lx189_0:
                        .quad            .Lx189_0_s
.Lx189_0_s:
                        .string          "PAT$1"
xchain173_n14_α:
# BOX IR_CALL SNO$MKPAT(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+544] -> [zr+512]
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 520], rax
                        .section         .rodata
.Lrkfn191:              .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn191]
                        lea              rsi, [rbp + 512]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 99
                        je               xchain173_n16_α
                        jmp              xchain173_n15_α
xchain173_n14_β:
                        jmp              xchain173_n16_α
# IR_ASSIGN gva
xchain173_n15_α:
                        mov              rax, qword ptr [rbp + 496]
                        mov              rdx, qword ptr [rbp + 504]
                        mov              qword ptr [1879052368], rax
                        mov              qword ptr [1879052376], rdx
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        jmp              xchain173_n16_α
#                 jstring        =  '"' jchunk ARBNO(jescape jchunk) '"'
# IR_LIT_STRING
xchain173_n16_α:
                        mov              qword ptr [rbp + 640], 1
                        mov              rax, qword ptr [rip + .Lx193_0]
                        mov              qword ptr [rbp + 648], rax
                        jmp              xchain173_n17_α
.Lx193_0:
                        .quad            .Lx193_0_s
.Lx193_0_s:
                        .string          "PAT$4"
xchain173_n17_α:
# BOX IR_CALL SNO$MKPAT(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+640] -> [zr+608]
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 616], rax
                        .section         .rodata
.Lrkfn195:              .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn195]
                        lea              rsi, [rbp + 608]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              eax, 99
                        je               xchain173_n19_α
                        jmp              xchain173_n18_α
xchain173_n17_β:
                        jmp              xchain173_n19_α
# IR_ASSIGN gva
xchain173_n18_α:
                        mov              rax, qword ptr [rbp + 592]
                        mov              rdx, qword ptr [rbp + 600]
                        mov              qword ptr [1879052384], rax
                        mov              qword ptr [1879052392], rdx
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        jmp              xchain173_n19_α
#                 jnumber        =  FENCE('-' | '')
# IR_LIT_STRING
xchain173_n19_α:
                        mov              qword ptr [rbp + 736], 1
                        mov              rax, qword ptr [rip + .Lx197_0]
                        mov              qword ptr [rbp + 744], rax
                        jmp              xchain173_n20_α
.Lx197_0:
                        .quad            .Lx197_0_s
.Lx197_0_s:
                        .string          "PAT$2"
xchain173_n20_α:
# BOX IR_CALL SNO$MKPAT(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+736] -> [zr+704]
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 712], rax
                        .section         .rodata
.Lrkfn199:              .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn199]
                        lea              rsi, [rbp + 704]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              eax, 99
                        je               xchain173_n22_α
                        jmp              xchain173_n21_α
xchain173_n20_β:
                        jmp              xchain173_n22_α
# IR_ASSIGN gva
xchain173_n21_α:
                        mov              rax, qword ptr [rbp + 688]
                        mov              rdx, qword ptr [rbp + 696]
                        mov              qword ptr [1879052400], rax
                        mov              qword ptr [1879052408], rdx
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        jmp              xchain173_n22_α
#                 jmember        =  ws jstring ws ':' *jelement
# IR_LIT_STRING
xchain173_n22_α:
                        mov              qword ptr [rbp + 832], 1
                        mov              rax, qword ptr [rip + .Lx201_0]
                        mov              qword ptr [rbp + 840], rax
                        jmp              xchain173_n23_α
.Lx201_0:
                        .quad            .Lx201_0_s
.Lx201_0_s:
                        .string          "PAT$5"
xchain173_n23_α:
# BOX IR_CALL SNO$MKPAT(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+832] -> [zr+800]
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 808], rax
                        .section         .rodata
.Lrkfn203:              .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn203]
                        lea              rsi, [rbp + 800]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        cmp              eax, 99
                        je               xchain173_n25_α
                        jmp              xchain173_n24_α
xchain173_n23_β:
                        jmp              xchain173_n25_α
# IR_ASSIGN gva
xchain173_n24_α:
                        mov              rax, qword ptr [rbp + 784]
                        mov              rdx, qword ptr [rbp + 792]
                        mov              qword ptr [1879052416], rax
                        mov              qword ptr [1879052424], rdx
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                        jmp              xchain173_n25_α
#                 jobject        =  '{' ( jmember ARBNO(',' jmember) | ws ) '}'
# IR_LIT_STRING
xchain173_n25_α:
                        mov              qword ptr [rbp + 928], 1
                        mov              rax, qword ptr [rip + .Lx205_0]
                        mov              qword ptr [rbp + 936], rax
                        jmp              xchain173_n26_α
.Lx205_0:
                        .quad            .Lx205_0_s
.Lx205_0_s:
                        .string          "PAT$6"
xchain173_n26_α:
# BOX IR_CALL SNO$MKPAT(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+928] -> [zr+896]
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 904], rax
                        .section         .rodata
.Lrkfn207:              .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn207]
                        lea              rsi, [rbp + 896]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                        cmp              eax, 99
                        je               xchain173_n28_α
                        jmp              xchain173_n27_α
xchain173_n26_β:
                        jmp              xchain173_n28_α
# IR_ASSIGN gva
xchain173_n27_α:
                        mov              rax, qword ptr [rbp + 880]
                        mov              rdx, qword ptr [rbp + 888]
                        mov              qword ptr [1879052432], rax
                        mov              qword ptr [1879052440], rdx
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                        jmp              xchain173_n28_α
#                 jarray         =  '[' ( *jelement ARBNO(',' *jelement) | ws ) ']'
# IR_LIT_STRING
xchain173_n28_α:
                        mov              qword ptr [rbp + 1024], 1
                        mov              rax, qword ptr [rip + .Lx209_0]
                        mov              qword ptr [rbp + 1032], rax
                        jmp              xchain173_n29_α
.Lx209_0:
                        .quad            .Lx209_0_s
.Lx209_0_s:
                        .string          "PAT$7"
xchain173_n29_α:
# BOX IR_CALL SNO$MKPAT(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1024] -> [zr+992]
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 1000], rax
                        .section         .rodata
.Lrkfn211:              .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn211]
                        lea              rsi, [rbp + 992]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                        cmp              eax, 99
                        je               xchain173_n31_α
                        jmp              xchain173_n30_α
xchain173_n29_β:
                        jmp              xchain173_n31_α
# IR_ASSIGN gva
xchain173_n30_α:
                        mov              rax, qword ptr [rbp + 976]
                        mov              rdx, qword ptr [rbp + 984]
                        mov              qword ptr [1879052448], rax
                        mov              qword ptr [1879052456], rdx
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                        jmp              xchain173_n31_α
#                 jvalue         =  jstring | jnumber | jobject | jarray
# IR_LIT_STRING
xchain173_n31_α:
                        mov              qword ptr [rbp + 1120], 1
                        mov              rax, qword ptr [rip + .Lx213_0]
                        mov              qword ptr [rbp + 1128], rax
                        jmp              xchain173_n32_α
.Lx213_0:
                        .quad            .Lx213_0_s
.Lx213_0_s:
                        .string          "PAT$8"
xchain173_n32_α:
# BOX IR_CALL SNO$MKPAT(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1120] -> [zr+1088]
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1096], rax
                        .section         .rodata
.Lrkfn215:              .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn215]
                        lea              rsi, [rbp + 1088]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                        cmp              eax, 99
                        je               xchain173_n34_α
                        jmp              xchain173_n33_α
xchain173_n32_β:
                        jmp              xchain173_n34_α
# IR_ASSIGN gva
xchain173_n33_α:
                        mov              rax, qword ptr [rbp + 1072]
                        mov              rdx, qword ptr [rbp + 1080]
                        mov              qword ptr [1879052464], rax
                        mov              qword ptr [1879052472], rdx
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        jmp              xchain173_n34_α
#                 jelement       =  ws *jvalue ws
# IR_LIT_STRING
xchain173_n34_α:
                        mov              qword ptr [rbp + 1216], 1
                        mov              rax, qword ptr [rip + .Lx217_0]
                        mov              qword ptr [rbp + 1224], rax
                        jmp              xchain173_n35_α
.Lx217_0:
                        .quad            .Lx217_0_s
.Lx217_0_s:
                        .string          "PAT$9"
xchain173_n35_α:
# BOX IR_CALL SNO$MKPAT(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1216] -> [zr+1184]
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 1192], rax
                        .section         .rodata
.Lrkfn219:              .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn219]
                        lea              rsi, [rbp + 1184]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                        cmp              eax, 99
                        je               xchain173_n37_α
                        jmp              xchain173_n36_α
xchain173_n35_β:
                        jmp              xchain173_n37_α
# IR_ASSIGN gva
xchain173_n36_α:
                        mov              rax, qword ptr [rbp + 1168]
                        mov              rdx, qword ptr [rbp + 1176]
                        mov              qword ptr [1879052480], rax
                        mov              qword ptr [1879052488], rdx
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                        jmp              xchain173_n37_α
#                 json           =  POS(0) jelement RPOS(0)
# IR_LIT_STRING
xchain173_n37_α:
                        mov              qword ptr [rbp + 1312], 1
                        mov              rax, qword ptr [rip + .Lx221_0]
                        mov              qword ptr [rbp + 1320], rax
                        jmp              xchain173_n38_α
.Lx221_0:
                        .quad            .Lx221_0_s
.Lx221_0_s:
                        .string          "PAT$10"
xchain173_n38_α:
# BOX IR_CALL SNO$MKPAT(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1312] -> [zr+1280]
                        mov              rax, qword ptr [rbp + 1312]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 1320]
                        mov              qword ptr [rbp + 1288], rax
                        .section         .rodata
.Lrkfn223:              .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn223]
                        lea              rsi, [rbp + 1280]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx
                        cmp              eax, 99
                        je               xchain173_n40_α
                        jmp              xchain173_n39_α
xchain173_n38_β:
                        jmp              xchain173_n40_α
# IR_ASSIGN gva
xchain173_n39_α:
                        mov              rax, qword ptr [rbp + 1264]
                        mov              rdx, qword ptr [rbp + 1272]
                        mov              qword ptr [1879052496], rax
                        mov              qword ptr [1879052504], rdx
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx
                        jmp              xchain173_n40_α
#                 &TRIM          =  0
# IR_LIT_STRING
xchain173_n40_α:
                        mov              qword ptr [rbp + 1408], 1
                        mov              rax, qword ptr [rip + .Lx225_0]
                        mov              qword ptr [rbp + 1416], rax
                        jmp              xchain173_n41_α
.Lx225_0:
                        .quad            .Lx225_0_s
.Lx225_0_s:
                        .string          "TRIM"
# IR_LIT_INTEGER
xchain173_n41_α:
                        mov              qword ptr [rbp + 1440], 6
                        mov              rax, qword ptr [rip + .Lx226_0]
                        mov              qword ptr [rbp + 1448], rax
                        jmp              xchain173_n42_α
.Lx226_0:
                        .quad            0
xchain173_n42_α:
# BOX IR_CALL SNO$KWSET(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1408] -> [zr+1360]
                        mov              rax, qword ptr [rbp + 1408]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 1416]
                        mov              qword ptr [rbp + 1368], rax
# marshal arg1 = producer-box slot [zr+1440] -> [zr+1376]
                        mov              rax, qword ptr [rbp + 1440]
                        mov              qword ptr [rbp + 1376], rax
                        mov              rax, qword ptr [rbp + 1448]
                        mov              qword ptr [rbp + 1384], rax
                        .section         .rodata
.Lrkfn228:              .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn228]
                        lea              rsi, [rbp + 1360]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                        cmp              eax, 99
                        je               xchain173_n43_α
                        jmp              xchain173_n43_α
xchain173_n42_β:
                        jmp              xchain173_n43_α
#                 INPUT(.INPUT, 9, '[-f0 -r1000000]')
# IR_LIT_STRING
xchain173_n43_α:
                        mov              qword ptr [rbp + 1600], 1
                        mov              rax, qword ptr [rip + .Lx229_0]
                        mov              qword ptr [rbp + 1608], rax
                        jmp              xchain173_n44_α
.Lx229_0:
                        .quad            .Lx229_0_s
.Lx229_0_s:
                        .string          "INPUT"
xchain173_n44_α:
# BOX IR_CALL SNO$NAME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1600] -> [zr+1568]
                        mov              rax, qword ptr [rbp + 1600]
                        mov              qword ptr [rbp + 1568], rax
                        mov              rax, qword ptr [rbp + 1608]
                        mov              qword ptr [rbp + 1576], rax
                        .section         .rodata
.Lrkfn231:              .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn231]
                        lea              rsi, [rbp + 1568]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx
                        cmp              eax, 99
                        je               xchain173_n46_α
                        jmp              xchain173_n45_α
xchain173_n44_β:
                        jmp              xchain173_n46_α
# IR_LIT_INTEGER
xchain173_n45_α:
                        mov              qword ptr [rbp + 1632], 6
                        mov              rax, qword ptr [rip + .Lx232_0]
                        mov              qword ptr [rbp + 1640], rax
                        jmp              xchain173_n47_α
.Lx232_0:
                        .quad            9
#                 src             =   INPUT                       :F(fail)
# IR_VAR
xchain173_n46_α:
                        mov              rdi, qword ptr [rip + .Lx233_0]
                        call             NV_GET_fn@PLT
                        cmp              eax, 99
                        je               xchain173_n49_α
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx
                        jmp              xchain173_n48_α
.Lx233_0:
                        .quad            .Lx233_0_s
.Lx233_0_s:
                        .string          "INPUT"
# IR_LIT_STRING
xchain173_n47_α:
                        mov              qword ptr [rbp + 1664], 1
                        mov              rax, qword ptr [rip + .Lx234_0]
                        mov              qword ptr [rbp + 1672], rax
                        jmp              xchain173_n50_α
.Lx234_0:
                        .quad            .Lx234_0_s
.Lx234_0_s:
                        .string          "[-f0 -r1000000]"
# IR_ASSIGN gva
xchain173_n48_α:
                        mov              rax, qword ptr [rbp + 1712]
                        mov              rdx, qword ptr [rbp + 1720]
                        mov              qword ptr [1879052512], rax
                        mov              qword ptr [1879052520], rdx
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx
                        jmp              xchain173_n51_α
# fail            OUTPUT          =  'Pattern match failed'
# IR_LIT_STRING
xchain173_n49_α:
                        mov              qword ptr [rbp + 2032], 1
                        mov              rax, qword ptr [rip + .Lx236_0]
                        mov              qword ptr [rbp + 2040], rax
                        jmp              xchain173_n52_α
.Lx236_0:
                        .quad            .Lx236_0_s
.Lx236_0_s:
                        .string          "Pattern match failed"
xchain173_n50_α:
# BOX CALL INPUT(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [zr+1552] -> [zr+1488]
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 1488], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 1496], rax
# marshal arg1 = producer-box slot [zr+1632] -> [zr+1504]
                        mov              rax, qword ptr [rbp + 1632]
                        mov              qword ptr [rbp + 1504], rax
                        mov              rax, qword ptr [rbp + 1640]
                        mov              qword ptr [rbp + 1512], rax
# marshal arg2 = producer-box slot [zr+1664] -> [zr+1520]
                        mov              rax, qword ptr [rbp + 1664]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 1672]
                        mov              qword ptr [rbp + 1528], rax
                        .section         .rodata
.Lbynamefn145:          .string          "INPUT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn145]
                        lea              rsi, [rbp + 1488]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1472], rax
                        mov              qword ptr [rbp + 1480], rdx
                        cmp              eax, 99
                        je               xchain173_n46_α
                        jmp              xchain173_n46_α
xchain173_n50_β:
                        jmp              xchain173_n46_α
#                 src             json                            :F(fail)
# IR_VAR
xchain173_n51_α:
                        mov              rax, qword ptr [1879052512]
                        mov              rdx, qword ptr [1879052520]
                        mov              qword ptr [rbp + 1824], rax
                        mov              qword ptr [rbp + 1832], rdx
                        jmp              xchain173_n53_α
# IR_ASSIGN global
xchain173_n52_α:
                        mov              rsi, qword ptr [rbp + 2032]
                        mov              rdx, qword ptr [rbp + 2040]
                        mov              rdi, qword ptr [rip + .Lx239_0]
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rbp + 2016], rax
                        mov              qword ptr [rbp + 2024], rdx
                        jmp              main_γ
.Lx239_0:
                        .quad            .Lx239_0_s
.Lx239_0_s:
                        .string          "OUTPUT"
# IR_MATCH_HEAD
xchain173_n53_α:
                        mov              qword ptr [rbp + 1800], rbp
                        mov              rdi, qword ptr [rbp + 1824]
                        mov              rsi, qword ptr [rbp + 1832]
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [rbp + 1792], r12
                        mov              qword ptr [rbp + 1776], rsp
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 1768], rax
                        mov              dword ptr [rbp + 1760], 0
.Lx241_0:
                        mov              r14d, dword ptr [rbp + 1760]
                        jmp              xchain173_n54_α
xchain173_n53_β:
                        add              dword ptr [rbp + 1760], 1
                        mov              eax, dword ptr [rbp + 1760]
                        cmp              eax, r15d
                        jg               .Lx241_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                        jne              .Lx241_1
                        jmp              .Lx241_0
.Lx241_1:
                        mov              rax, qword ptr [rbp + 1768]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 1776]
                        mov              r12, qword ptr [rbp + 1792]
                        mov              rbp, qword ptr [rbp + 1800]
                        jmp              xchain173_n49_α
# IR_MATCH_DEFER (ZS-2 jmp-entry)
xchain173_n54_α:
                        lea              rsi, [rip + g_sno_defer_cells+64]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                        jne              .Lx242_11
                        mov              rax, qword ptr [1879052496]
                        mov              rdx, qword ptr [1879052504]
                        cmp              eax, 3
                        jne              .Lx242_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                        jne              .Lx242_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                        jmp              .Lx242_10
.Lx242_9:
                        xor              eax, eax
.Lx242_10:
                        lea              rsi, [rip + g_sno_defer_cells+64]
                        mov              qword ptr [rsi + 0], rax
.Lx242_11:
                        test             rax, rax
                        jz               .Lx242_0
                        mov              r8d, 1
                        lea              rcx, [rip + .Lx242_4]
                        lea              rdx, [rip + .Lx242_5]
                        jmp              rax
.Lx242_4:
                        lea              rcx, [rip + g_scan_hit_start]
                        mov              rax, qword ptr [rcx]
                        mov              dword ptr [rbp + 1760], eax
                        jmp              xchain173_n55_α
.Lx242_5:
                        jmp              xchain173_n53_β
.Lx242_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S11]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx242_2:
                        test             rax, rax
                        je               .Lx242_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx242_7]
                        lea              rdx, [rip + .Lx242_8]
                        jmp              rax
.Lx242_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx242_2
.Lx242_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx242_2
.Lx242_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                        js               xchain173_n53_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx242_6]
                        sub              rsp, 8
                        push             rax
                        jmp              xchain173_n55_α
.Lx242_6:
                        add              rsp, 16
                        jmp              xchain173_n53_β
xchain173_n54_β:
                        jmp              qword ptr [rsp]
# IR_MATCH_RELEASE
xchain173_n55_α:
                        mov              rax, qword ptr [rbp + 1768]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 1776]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rsp + 1824]
                        mov              rsi, r12
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx244_1:
                        test             rax, rax
                        je               .Lx244_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx244_3]
                        lea              rdx, [rip + .Lx244_4]
                        jmp              rax
.Lx244_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                        jmp              .Lx244_1
.Lx244_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                        jmp              .Lx244_1
.Lx244_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + 1792]
                        mov              rbp, qword ptr [rbp + 1800]
                        jmp              xchain173_n56_α
#                 OUTPUT          =  'matched bytes=' SIZE(src)   :(END)
# IR_LIT_STRING
xchain173_n56_α:
                        mov              qword ptr [rbp + 1904], 1
                        mov              rax, qword ptr [rip + .Lx245_0]
                        mov              qword ptr [rbp + 1912], rax
                        jmp              xchain173_n57_α
.Lx245_0:
                        .quad            .Lx245_0_s
.Lx245_0_s:
                        .string          "matched bytes="
# IR_VAR
xchain173_n57_α:
                        mov              rax, qword ptr [1879052512]
                        mov              rdx, qword ptr [1879052520]
                        mov              qword ptr [rbp + 1984], rax
                        mov              qword ptr [rbp + 1992], rdx
                        jmp              xchain173_n58_α
xchain173_n58_α:
# BOX IR_CALL SIZE(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1984] -> [zr+1952]
                        mov              rax, qword ptr [rbp + 1984]
                        mov              qword ptr [rbp + 1952], rax
                        mov              rax, qword ptr [rbp + 1992]
                        mov              qword ptr [rbp + 1960], rax
                        .section         .rodata
.Lrkfn248:              .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn248]
                        lea              rsi, [rbp + 1952]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx
                        cmp              eax, 99
                        je               main_γ
                        jmp              xchain173_n59_α
xchain173_n58_β:
                        jmp              main_γ
xchain173_n59_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 1904]
                        mov              rsi, qword ptr [rbp + 1912]
                        mov              rdx, qword ptr [rbp + 1936]
                        mov              rcx, qword ptr [rbp + 1944]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx
                        jmp              xchain173_n60_α
# IR_ASSIGN global
xchain173_n60_α:
                        mov              rsi, qword ptr [rbp + 1872]
                        mov              rdx, qword ptr [rbp + 1880]
                        mov              rdi, qword ptr [rip + .Lx250_0]
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rbp + 1856], rax
                        mov              qword ptr [rbp + 1864], rdx
                        jmp              main_γ
.Lx250_0:
                        .quad            .Lx250_0_s
.Lx250_0_s:
                        .string          "OUTPUT"
main_β:
jmp main_ω
main_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [rbp + 2072]
mov rbp, [rsp + 65536]
add rsp, 65544
ret
main_ω:
mov rsp, qword ptr [rbp + 2072]
mov dword ptr [rsp+0], 99
mov dword ptr [rsp+4], 0
mov qword ptr [rsp+8], 0
mov eax, 99
xor edx, edx
mov rbp, [rsp + 65536]
add rsp, 65544
ret
.section .rodata
.S0: .string "bslash"
.S1: .string "jchunk"
.S2: .string "jescape"
.S3: .string "ws"
.S4: .string "jstring"
.S5: .string "jelement"
.S6: .string "jmember"
.S7: .string "jnumber"
.S8: .string "jobject"
.S9: .string "jarray"
.S10: .string "jvalue"
.S11: .string "json"
.text
.section .rodata
.C0:
 .byte 0,0,0,0,0,0,0,0,0,1,1,0,0,1,0,0
 .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
 .byte 1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
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
.C1:
 .byte 0,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0
 .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
 .byte 0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0
 .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
 .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
 .byte 0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0
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
.C2:
 .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
 .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
 .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
 .byte 0,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0
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
.C3:
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
.C4:
 .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
 .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
 .byte 0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,1
 .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
 .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
 .byte 0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0
 .byte 0,0,1,0,0,0,1,0,0,0,0,0,0,0,1,0
 .byte 0,0,1,0,1,0,0,0,0,0,0,0,0,0,0,0
 .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
 .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
 .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
 .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
 .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
 .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
 .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
 .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
.C5:
 .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
 .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
 .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
 .byte 1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0
 .byte 0,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0
 .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
 .byte 0,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0
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
