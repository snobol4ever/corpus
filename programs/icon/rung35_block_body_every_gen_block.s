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
bb1_α:
# BOX IR_CALL MAKELIST(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = LIT_I -> [r12+64]
 mov qword ptr [r12 + 64], 6
 movabs rax, 10
 mov qword ptr [r12 + 72], rax
# marshal arg1 = LIT_I -> [r12+80]
 mov qword ptr [r12 + 80], 6
 movabs rax, 20
 mov qword ptr [r12 + 88], rax
# marshal arg2 = LIT_I -> [r12+96]
 mov qword ptr [r12 + 96], 6
 movabs rax, 30
 mov qword ptr [r12 + 104], rax
  .section .rodata
  .Lbynamefn2: .string "MAKELIST"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn2]
 lea rsi, [r12 + 64]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 cmp eax, 99
 je xchain0_n2_α
 jmp xchain0_n1_α
xchain0_n0_β:
 jmp xchain0_n2_α
xchain0_n1_α:
bb2_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 48]
 mov rdx, qword ptr [r12 + 56]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp xchain0_n2_α
xchain0_n2_α:
# IR_VAR
bb3_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xbang4_iter_done
 xbang4_iter_β:
 jmp xchain0_n11_α
xbang4_iter_done:
# IR_LIST_BANG
bb4_α:
 mov qword ptr [r12 + 128], 0
.Lx8_0:
 mov rdi, qword ptr [r12 + 0]
 mov rsi, qword ptr [r12 + 8]
 mov rdx, qword ptr [r12 + 128]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 136], rax
 mov qword ptr [r12 + 144], rdx
 cmp rax, 99
 je xchain0_n11_α
 jmp xchain0_n3_α
 xchain0_n2_β:
 inc qword ptr [r12 + 128]
 jmp .Lx8_0
xchain0_n3_α:
bb5_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 136]
 mov rdx, qword ptr [r12 + 144]
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 mov qword ptr [r12 + 152], rax
 mov qword ptr [r12 + 160], rdx
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp xchain0_n22_β
xchain0_n4_α:
# IR_VAR
bb6_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain0_n5_α
 xchain0_n4_β:
 jmp xchain0_n8_α
xchain0_n5_α:
# IR_LIT_I
bb7_α:
 mov qword ptr [r12 + 168], 6
 mov rax, qword ptr [rip + .Lx12_0]
 mov qword ptr [r12 + 176], rax
 jmp xchain0_n6_α
 xchain0_n5_β:
 jmp xchain0_n8_α
.Lx12_0:
 .quad 100
xchain0_n6_α:
bb8_α:
# IR_BINOP_ARITH
 mov rax, qword ptr [r12 + 24]
 mov rcx, qword ptr [r12 + 176]
 add rax, rcx
 mov qword ptr [r12 + 184], 6
 mov qword ptr [r12 + 192], rax
 jmp xchain0_n7_α
 xchain0_n6_β:
 jmp xchain0_n8_α
xchain0_n7_α:
bb9_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 184]
 mov rdx, qword ptr [r12 + 192]
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 mov qword ptr [r12 + 200], rax
 mov qword ptr [r12 + 208], rdx
 jmp xchain0_n8_α
 xchain0_n7_β:
 jmp xchain0_n8_α
xchain0_n8_α:
# IR_VAR
bb10_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xchain0_n9_α
 xchain0_n8_β:
 jmp xchain0_n2_β
xchain0_n9_α:
bb11_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 32]
 mov rsi, qword ptr [r12 + 40]
 call rt_write_any_nl@PLT
 jmp xchain0_n10_α
xchain0_n9_β:
xchain0_n9_β:
 jmp xchain0_n2_β
xchain0_n10_α:
jmp xchain0_n2_β
xchain0_n10_β:
jmp xchain0_n2_β
xchain0_n11_α:
# IR_EVERY
 jmp xchain0_n12_α
 xchain0_n11_β:
 jmp xchain0_n12_α
xchain0_n12_α:
# IR_LIT_S
bb13_α:
 mov qword ptr [r12 + 216], 1
 mov rax, qword ptr [rip + .Lx19_0]
 mov qword ptr [r12 + 224], rax
 jmp xchain0_n13_α
 xchain0_n12_β:
 jmp xchain0_n14_α
.Lx19_0:
 .quad .Lx19_0_s
.Lx19_0_s:
 .string "break"
xchain0_n13_α:
bb14_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 216]
 mov rsi, qword ptr [r12 + 224]
 call rt_write_any_nl@PLT
 jmp xchain0_n14_α
xchain0_n13_β:
xchain0_n13_β:
 jmp xchain0_n14_α
xchain0_n14_α:
# IR_VAR
bb15_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xbang21_iter_done
 xbang21_iter_β:
 jmp xchain0_n16_α
xbang21_iter_done:
# IR_LIST_BANG
bb16_α:
 mov qword ptr [r12 + 232], 0
.Lx25_0:
 mov rdi, qword ptr [r12 + 0]
 mov rsi, qword ptr [r12 + 8]
 mov rdx, qword ptr [r12 + 232]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 cmp rax, 99
 je xchain0_n16_α
 jmp xchain0_n15_α
 xchain0_n14_β:
 inc qword ptr [r12 + 232]
 jmp .Lx25_0
xchain0_n15_α:
bb17_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 240]
 mov rdx, qword ptr [r12 + 248]
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain0_n17_α
 xchain0_n15_β:
 jmp xchain0_n22_β
xchain0_n16_α:
# IR_EVERY
 jmp xchain0_n18_α
 xchain0_n16_β:
 jmp xchain0_n18_α
xchain0_n17_α:
# IR_VAR
bb19_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain0_n19_α
 xchain0_n17_β:
 jmp xchain0_n24_α
xchain0_n18_α:
# IR_LIT_S
bb20_α:
 mov qword ptr [r12 + 272], 1
 mov rax, qword ptr [rip + .Lx30_0]
 mov qword ptr [r12 + 280], rax
 jmp xchain0_n20_α
 xchain0_n18_β:
 jmp xchain0_n22_α
.Lx30_0:
 .quad .Lx30_0_s
.Lx30_0_s:
 .string "next"
xchain0_n19_α:
# IR_LIT_I
bb21_α:
 mov qword ptr [r12 + 288], 6
 mov rax, qword ptr [rip + .Lx31_0]
 mov qword ptr [r12 + 296], rax
 jmp xchain0_n21_α
 xchain0_n19_β:
 jmp xchain0_n24_α
.Lx31_0:
 .quad 20
xchain0_n20_α:
bb22_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 272]
 mov rsi, qword ptr [r12 + 280]
 call rt_write_any_nl@PLT
 jmp xchain0_n22_α
xchain0_n20_β:
xchain0_n20_β:
 jmp xchain0_n22_α
xchain0_n21_α:
bb23_α:
# IR_BINOP_RELOP
 mov rax, qword ptr [r12 + 24]
 mov rcx, qword ptr [r12 + 296]
 cmp rax, rcx
 jne xchain0_n24_α
 mov rcx, qword ptr [r12 + 288]
 mov qword ptr [r12 + 304], rcx
 mov rcx, qword ptr [r12 + 296]
 mov qword ptr [r12 + 312], rcx
 jmp xchain0_n23_α
 xchain0_n21_β:
 jmp xchain0_n24_α
xchain0_n22_α:
# IR_VAR
bb24_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xbang34_iter_done
 xbang34_iter_β:
 jmp xchain0_n26_α
xbang34_iter_done:
# IR_LIST_BANG
bb25_α:
 mov qword ptr [r12 + 320], 0
.Lx38_0:
 mov rdi, qword ptr [r12 + 0]
 mov rsi, qword ptr [r12 + 8]
 mov rdx, qword ptr [r12 + 320]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 328], rax
 mov qword ptr [r12 + 336], rdx
 cmp rax, 99
 je xchain0_n26_α
 jmp xchain0_n25_α
 xchain0_n22_β:
 inc qword ptr [r12 + 320]
 jmp .Lx38_0
xchain0_n23_α:
xchain0_n23_β:
jmp xchain0_n18_α
jmp xchain0_n18_α
xchain0_n24_α:
# IR_VAR
bb26_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain0_n27_α
 xchain0_n24_β:
 jmp xchain0_n14_β
xchain0_n25_α:
bb27_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 328]
 mov rdx, qword ptr [r12 + 336]
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 mov qword ptr [r12 + 344], rax
 mov qword ptr [r12 + 352], rdx
 jmp xchain0_n28_α
 xchain0_n25_β:
 jmp xchain0_n22_β
xchain0_n26_α:
# IR_EVERY
 jmp main_ω
 xchain0_n26_β:
 jmp main_ω
xchain0_n27_α:
bb29_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 call rt_write_any_nl@PLT
 jmp xchain0_n29_α
xchain0_n27_β:
xchain0_n27_β:
 jmp xchain0_n14_β
xchain0_n28_α:
# IR_VAR
bb30_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain0_n30_α
 xchain0_n28_β:
 jmp xchain0_n33_α
xchain0_n29_α:
jmp xchain0_n14_β
xchain0_n29_β:
jmp xchain0_n14_β
xchain0_n30_α:
# IR_LIT_I
bb31_α:
 mov qword ptr [r12 + 360], 6
 mov rax, qword ptr [rip + .Lx46_0]
 mov qword ptr [r12 + 368], rax
 jmp xchain0_n31_α
 xchain0_n30_β:
 jmp xchain0_n33_α
.Lx46_0:
 .quad 20
xchain0_n31_α:
bb32_α:
# IR_BINOP_RELOP
 mov rax, qword ptr [r12 + 24]
 mov rcx, qword ptr [r12 + 368]
 cmp rax, rcx
 jne xchain0_n33_α
 mov rcx, qword ptr [r12 + 360]
 mov qword ptr [r12 + 376], rcx
 mov rcx, qword ptr [r12 + 368]
 mov qword ptr [r12 + 384], rcx
 jmp xchain0_n32_α
 xchain0_n31_β:
 jmp xchain0_n33_α
xchain0_n32_α:
xchain0_n32_β:
jmp xchain0_n22_β
jmp xchain0_n22_β
xchain0_n33_α:
# IR_VAR
bb33_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain0_n34_α
 xchain0_n33_β:
 jmp xchain0_n22_β
xchain0_n34_α:
bb34_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 call rt_write_any_nl@PLT
 jmp xchain0_n35_α
xchain0_n34_β:
xchain0_n34_β:
 jmp xchain0_n22_β
xchain0_n35_α:
jmp xchain0_n22_β
xchain0_n35_β:
jmp xchain0_n22_β
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
