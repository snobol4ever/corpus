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
# BOX IR_CALL table(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn2: .string "table"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2]
 lea rsi, [r12 + 32]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 cmp eax, 99
 je xchain0_n2_α
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp xchain0_n2_α
xchain0_n1_α:
bb2_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 16]
 mov rdx, qword ptr [r12 + 24]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp xchain0_n2_α
xchain0_n2_α:
bb3_α:
# BOX IR_CALL insert(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+0] -> [r12+64]
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 64], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 72], rax
# marshal arg1 = LIT_S (string REG-RO sealed in-band) -> [r12+80]
 mov qword ptr [r12 + 80], 1
 mov rax, qword ptr [rip + .Lx4_2]
 mov qword ptr [r12 + 88], rax
 jmp .Lx4_3
.Lx4_2:
 .quad .Lx4_2_s
.Lx4_2_s:
 .string "k1"
.Lx4_3:
# marshal arg2 = LIT_I -> [r12+96]
 mov qword ptr [r12 + 96], 6
 movabs rax, 1
 mov qword ptr [r12 + 104], rax
  .section .rodata
  .Lrkfn5: .string "insert"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn5]
 lea rsi, [r12 + 64]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 cmp eax, 99
 je xchain0_n3_α
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp xchain0_n3_α
xchain0_n3_α:
bb4_α:
# BOX IR_CALL insert(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+0] -> [r12+128]
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 136], rax
# marshal arg1 = LIT_S (string REG-RO sealed in-band) -> [r12+144]
 mov qword ptr [r12 + 144], 1
 mov rax, qword ptr [rip + .Lx6_2]
 mov qword ptr [r12 + 152], rax
 jmp .Lx6_3
.Lx6_2:
 .quad .Lx6_2_s
.Lx6_2_s:
 .string "k2"
.Lx6_3:
# marshal arg2 = LIT_I -> [r12+160]
 mov qword ptr [r12 + 160], 6
 movabs rax, 2
 mov qword ptr [r12 + 168], rax
  .section .rodata
  .Lrkfn7: .string "insert"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn7]
 lea rsi, [r12 + 128]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je xchain0_n4_α
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp xchain0_n4_α
xchain0_n4_α:
bb5_α:
# BOX IR_CALL delete(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+0] -> [r12+192]
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 200], rax
# marshal arg1 = LIT_S (string REG-RO sealed in-band) -> [r12+208]
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx8_2]
 mov qword ptr [r12 + 216], rax
 jmp .Lx8_3
.Lx8_2:
 .quad .Lx8_2_s
.Lx8_2_s:
 .string "k1"
.Lx8_3:
  .section .rodata
  .Lrkfn9: .string "delete"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn9]
 lea rsi, [r12 + 192]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n5_α
 xchain0_n4_β:
 jmp xchain0_n5_α
xchain0_n5_α:
# IR_VAR
bb6_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xchain0_n6_α
 xchain0_n5_β:
 jmp xchain0_n8_α
xchain0_n6_α:
# IR_UNOP
bb7_α:
 mov rdi, qword ptr [r12 + 0]
 mov rsi, qword ptr [r12 + 8]
 call rt_size_d@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain0_n7_α
 xchain0_n6_β:
 jmp xchain0_n8_α
xchain0_n7_α:
bb8_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 224]
 mov rsi, qword ptr [r12 + 232]
 call rt_write_any_nl@PLT
 jmp xchain0_n8_α
xchain0_n7_β:
xchain0_n7_β:
 jmp xchain0_n8_α
xchain0_n8_α:
bb9_α:
# BOX IR_CALL member(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+0] -> [r12+256]
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 264], rax
# marshal arg1 = LIT_S (string REG-RO sealed in-band) -> [r12+272]
 mov qword ptr [r12 + 272], 1
 mov rax, qword ptr [rip + .Lx14_2]
 mov qword ptr [r12 + 280], rax
 jmp .Lx14_3
.Lx14_2:
 .quad .Lx14_2_s
.Lx14_2_s:
 .string "k1"
.Lx14_3:
  .section .rodata
  .Lrkfn15: .string "member"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn15]
 lea rsi, [r12 + 256]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 cmp eax, 99
 je xchain0_n10_α
 jmp xchain0_n9_α
 xchain0_n8_β:
 jmp xchain0_n10_α
xchain0_n9_α:
# IR_LIT_S
bb10_α:
 mov qword ptr [r12 + 288], 1
 mov rax, qword ptr [rip + .Lx16_0]
 mov qword ptr [r12 + 296], rax
 jmp xchain0_n11_α
 xchain0_n9_β:
 jmp xchain0_n13_α
.Lx16_0:
 .quad .Lx16_0_s
.Lx16_0_s:
 .string "bad"
xchain0_n10_α:
# IR_LIT_S
bb11_α:
 mov qword ptr [r12 + 304], 1
 mov rax, qword ptr [rip + .Lx17_0]
 mov qword ptr [r12 + 312], rax
 jmp xchain0_n12_α
 xchain0_n10_β:
 jmp xchain0_n13_α
.Lx17_0:
 .quad .Lx17_0_s
.Lx17_0_s:
 .string "deleted"
xchain0_n11_α:
bb12_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 288]
 mov rsi, qword ptr [r12 + 296]
 call rt_write_any_nl@PLT
 jmp xchain0_n13_α
xchain0_n11_β:
xchain0_n11_β:
 jmp xchain0_n13_α
xchain0_n12_α:
bb13_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 304]
 mov rsi, qword ptr [r12 + 312]
 call rt_write_any_nl@PLT
 jmp xchain0_n13_α
xchain0_n12_β:
xchain0_n12_β:
 jmp xchain0_n13_α
xchain0_n13_α:
bb14_α:
# BOX IR_CALL [](...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = varslot [r12+0] -> [r12+336]
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 344], rax
# marshal arg1 = LIT_S (string REG-RO sealed in-band) -> [r12+352]
 mov qword ptr [r12 + 352], 1
 mov rax, qword ptr [rip + .Lx20_2]
 mov qword ptr [r12 + 360], rax
 jmp .Lx20_3
.Lx20_2:
 .quad .Lx20_2_s
.Lx20_2_s:
 .string "k2"
.Lx20_3:
  .section .rodata
  .Lbynamefn21: .string "[]"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn21]
 lea rsi, [r12 + 336]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 cmp eax, 99
 je main_ω
 jmp xchain0_n14_α
xchain0_n13_β:
 jmp main_ω
xchain0_n14_α:
bb15_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 320]
 mov rsi, qword ptr [r12 + 328]
 call rt_write_any_nl@PLT
 jmp main_γ
xchain0_n14_β:
xchain0_n14_β:
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
