  .intel_syntax noprefix
  .text
  .globl main
main:
  push rbp
  mov rbp, rsp
  call rt_frame@PLT
  mov rdi, rax
  xor esi, esi
  call main_α
  xor eax, eax
  pop rbp
  ret
main_α:
#=======================================================================================================================
    .global main_α
    .global main_β
    .global main_γ
    .global main_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
main_α_body:
xchain0_n0_α:
# IR_LIT_S
bb1_α:
 mov qword ptr [r12 + 0], 1
 mov rax, qword ptr [rip + .Lx1_0]
 mov qword ptr [r12 + 8], rax
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp xchain0_n4_α
.Lx1_0:
 .quad .Lx1_0_s
.Lx1_0_s:
 .string "a"
xchain0_n1_α:
# IR_LIT_S
bb2_α:
 mov qword ptr [r12 + 16], 1
 mov rax, qword ptr [rip + .Lx2_0]
 mov qword ptr [r12 + 24], rax
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp xchain0_n4_α
.Lx2_0:
 .quad .Lx2_0_s
.Lx2_0_s:
 .string "b"
xchain0_n2_α:
bb3_α:
# IR_BINOP_RELOP
 mov rdi, qword ptr [r12 + 0]
 mov rsi, qword ptr [r12 + 8]
 mov rdx, qword ptr [r12 + 16]
 mov rcx, qword ptr [r12 + 24]
 mov r8d, 12
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain0_n4_α
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 40], rax
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp xchain0_n4_α
xchain0_n3_α:
# IR_LIT_S
bb4_α:
 mov qword ptr [r12 + 48], 1
 mov rax, qword ptr [rip + .Lx4_0]
 mov qword ptr [r12 + 56], rax
 jmp xchain0_n5_α
 xchain0_n3_β:
 jmp xchain0_n4_α
.Lx4_0:
 .quad .Lx4_0_s
.Lx4_0_s:
 .string "a<<b"
xchain0_n4_α:
# IR_LIT_S
bb5_α:
 mov qword ptr [r12 + 64], 1
 mov rax, qword ptr [rip + .Lx5_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain0_n6_α
 xchain0_n4_β:
 jmp xchain0_n9_α
.Lx5_0:
 .quad .Lx5_0_s
.Lx5_0_s:
 .string "b"
xchain0_n5_α:
bb6_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 48]
 mov rsi, qword ptr [r12 + 56]
 call rt_write_any_nl@PLT
 jmp xchain0_n4_α
xchain0_n5_β:
xchain0_n5_β:
 jmp xchain0_n4_α
xchain0_n6_α:
# IR_LIT_S
bb7_α:
 mov qword ptr [r12 + 80], 1
 mov rax, qword ptr [rip + .Lx7_0]
 mov qword ptr [r12 + 88], rax
 jmp xchain0_n7_α
 xchain0_n6_β:
 jmp xchain0_n9_α
.Lx7_0:
 .quad .Lx7_0_s
.Lx7_0_s:
 .string "a"
xchain0_n7_α:
bb8_α:
# IR_BINOP_RELOP
 mov rdi, qword ptr [r12 + 64]
 mov rsi, qword ptr [r12 + 72]
 mov rdx, qword ptr [r12 + 80]
 mov rcx, qword ptr [r12 + 88]
 mov r8d, 14
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain0_n9_α
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 104], rax
 jmp xchain0_n8_α
 xchain0_n7_β:
 jmp xchain0_n9_α
xchain0_n8_α:
# IR_LIT_S
bb9_α:
 mov qword ptr [r12 + 112], 1
 mov rax, qword ptr [rip + .Lx9_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain0_n10_α
 xchain0_n8_β:
 jmp xchain0_n9_α
.Lx9_0:
 .quad .Lx9_0_s
.Lx9_0_s:
 .string "b>>a"
xchain0_n9_α:
# IR_LIT_S
bb10_α:
 mov qword ptr [r12 + 128], 1
 mov rax, qword ptr [rip + .Lx10_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain0_n11_α
 xchain0_n9_β:
 jmp xchain0_n14_α
.Lx10_0:
 .quad .Lx10_0_s
.Lx10_0_s:
 .string "a"
xchain0_n10_α:
bb11_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 call rt_write_any_nl@PLT
 jmp xchain0_n9_α
xchain0_n10_β:
xchain0_n10_β:
 jmp xchain0_n9_α
xchain0_n11_α:
# IR_LIT_S
bb12_α:
 mov qword ptr [r12 + 144], 1
 mov rax, qword ptr [rip + .Lx12_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain0_n12_α
 xchain0_n11_β:
 jmp xchain0_n14_α
.Lx12_0:
 .quad .Lx12_0_s
.Lx12_0_s:
 .string "a"
xchain0_n12_α:
bb13_α:
# IR_BINOP_RELOP
 mov rdi, qword ptr [r12 + 128]
 mov rsi, qword ptr [r12 + 136]
 mov rdx, qword ptr [r12 + 144]
 mov rcx, qword ptr [r12 + 152]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain0_n14_α
 mov rax, qword ptr [r12 + 144]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [r12 + 168], rax
 jmp xchain0_n13_α
 xchain0_n12_β:
 jmp xchain0_n14_α
xchain0_n13_α:
# IR_LIT_S
bb14_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx14_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain0_n15_α
 xchain0_n13_β:
 jmp xchain0_n14_α
.Lx14_0:
 .quad .Lx14_0_s
.Lx14_0_s:
 .string "a==a"
xchain0_n14_α:
# IR_LIT_S
bb15_α:
 mov qword ptr [r12 + 192], 1
 mov rax, qword ptr [rip + .Lx15_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain0_n16_α
 xchain0_n14_β:
 jmp xchain0_n19_α
.Lx15_0:
 .quad .Lx15_0_s
.Lx15_0_s:
 .string "a"
xchain0_n15_α:
bb16_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 176]
 mov rsi, qword ptr [r12 + 184]
 call rt_write_any_nl@PLT
 jmp xchain0_n14_α
xchain0_n15_β:
xchain0_n15_β:
 jmp xchain0_n14_α
xchain0_n16_α:
# IR_LIT_S
bb17_α:
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx17_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain0_n17_α
 xchain0_n16_β:
 jmp xchain0_n19_α
.Lx17_0:
 .quad .Lx17_0_s
.Lx17_0_s:
 .string "b"
xchain0_n17_α:
bb18_α:
# IR_BINOP_RELOP
 mov rdi, qword ptr [r12 + 192]
 mov rsi, qword ptr [r12 + 200]
 mov rdx, qword ptr [r12 + 208]
 mov rcx, qword ptr [r12 + 216]
 mov r8d, 17
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain0_n19_α
 mov rax, qword ptr [r12 + 208]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 216]
 mov qword ptr [r12 + 232], rax
 jmp xchain0_n18_α
 xchain0_n17_β:
 jmp xchain0_n19_α
xchain0_n18_α:
# IR_LIT_S
bb19_α:
 mov qword ptr [r12 + 240], 1
 mov rax, qword ptr [rip + .Lx19_0]
 mov qword ptr [r12 + 248], rax
 jmp xchain0_n20_α
 xchain0_n18_β:
 jmp xchain0_n19_α
.Lx19_0:
 .quad .Lx19_0_s
.Lx19_0_s:
 .string "a~==b"
xchain0_n19_α:
# IR_LIT_S
bb20_α:
 mov qword ptr [r12 + 256], 1
 mov rax, qword ptr [rip + .Lx20_0]
 mov qword ptr [r12 + 264], rax
 jmp xchain0_n21_α
 xchain0_n19_β:
 jmp xchain0_n24_α
.Lx20_0:
 .quad .Lx20_0_s
.Lx20_0_s:
 .string "a"
xchain0_n20_α:
bb21_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 240]
 mov rsi, qword ptr [r12 + 248]
 call rt_write_any_nl@PLT
 jmp xchain0_n19_α
xchain0_n20_β:
xchain0_n20_β:
 jmp xchain0_n19_α
xchain0_n21_α:
# IR_LIT_S
bb22_α:
 mov qword ptr [r12 + 272], 1
 mov rax, qword ptr [rip + .Lx22_0]
 mov qword ptr [r12 + 280], rax
 jmp xchain0_n22_α
 xchain0_n21_β:
 jmp xchain0_n24_α
.Lx22_0:
 .quad .Lx22_0_s
.Lx22_0_s:
 .string "a"
xchain0_n22_α:
bb23_α:
# IR_BINOP_RELOP
 mov rdi, qword ptr [r12 + 256]
 mov rsi, qword ptr [r12 + 264]
 mov rdx, qword ptr [r12 + 272]
 mov rcx, qword ptr [r12 + 280]
 mov r8d, 13
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain0_n24_α
 mov rax, qword ptr [r12 + 272]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 280]
 mov qword ptr [r12 + 296], rax
 jmp xchain0_n23_α
 xchain0_n22_β:
 jmp xchain0_n24_α
xchain0_n23_α:
# IR_LIT_S
bb24_α:
 mov qword ptr [r12 + 304], 1
 mov rax, qword ptr [rip + .Lx24_0]
 mov qword ptr [r12 + 312], rax
 jmp xchain0_n25_α
 xchain0_n23_β:
 jmp xchain0_n24_α
.Lx24_0:
 .quad .Lx24_0_s
.Lx24_0_s:
 .string "a<<=a"
xchain0_n24_α:
# IR_LIT_S
bb25_α:
 mov qword ptr [r12 + 320], 1
 mov rax, qword ptr [rip + .Lx25_0]
 mov qword ptr [r12 + 328], rax
 jmp xchain0_n26_α
 xchain0_n24_β:
 jmp main_ω
.Lx25_0:
 .quad .Lx25_0_s
.Lx25_0_s:
 .string "b"
xchain0_n25_α:
bb26_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 304]
 mov rsi, qword ptr [r12 + 312]
 call rt_write_any_nl@PLT
 jmp xchain0_n24_α
xchain0_n25_β:
xchain0_n25_β:
 jmp xchain0_n24_α
xchain0_n26_α:
# IR_LIT_S
bb27_α:
 mov qword ptr [r12 + 336], 1
 mov rax, qword ptr [rip + .Lx27_0]
 mov qword ptr [r12 + 344], rax
 jmp xchain0_n27_α
 xchain0_n26_β:
 jmp main_ω
.Lx27_0:
 .quad .Lx27_0_s
.Lx27_0_s:
 .string "b"
xchain0_n27_α:
bb28_α:
# IR_BINOP_RELOP
 mov rdi, qword ptr [r12 + 320]
 mov rsi, qword ptr [r12 + 328]
 mov rdx, qword ptr [r12 + 336]
 mov rcx, qword ptr [r12 + 344]
 mov r8d, 15
 call rt_jct_relop@PLT
 test eax, eax
 jz main_ω
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 352], rax
 mov rax, qword ptr [r12 + 344]
 mov qword ptr [r12 + 360], rax
 jmp xchain0_n28_α
 xchain0_n27_β:
 jmp main_ω
xchain0_n28_α:
# IR_LIT_S
bb29_α:
 mov qword ptr [r12 + 368], 1
 mov rax, qword ptr [rip + .Lx29_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain0_n29_α
 xchain0_n28_β:
 jmp main_ω
.Lx29_0:
 .quad .Lx29_0_s
.Lx29_0_s:
 .string "b>>=b"
xchain0_n29_α:
bb30_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 368]
 mov rsi, qword ptr [r12 + 376]
 call rt_write_any_nl@PLT
 jmp main_γ
xchain0_n29_β:
xchain0_n29_β:
 jmp main_ω
main_β:
jmp main_ω
main_γ:
mov eax, 1
xor edx, edx
pop r12
ret
main_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
