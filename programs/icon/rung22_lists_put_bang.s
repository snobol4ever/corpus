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
  .section .rodata
  .Lbynamefn2: .string "MAKELIST"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn2]
 lea rsi, [r12 + 16]
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
# BOX IR_CALL put(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = varslot [r12+0] -> [r12+64]
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 64], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 72], rax
# marshal arg1 = LIT_I -> [r12+80]
 mov qword ptr [r12 + 80], 6
 movabs rax, 4
 mov qword ptr [r12 + 88], rax
  .section .rodata
  .Lbynamefn5: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn5]
 lea rsi, [r12 + 64]
 mov edx, 2
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
# BOX IR_CALL put(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = varslot [r12+0] -> [r12+112]
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 120], rax
# marshal arg1 = LIT_I -> [r12+128]
 mov qword ptr [r12 + 128], 6
 movabs rax, 5
 mov qword ptr [r12 + 136], rax
  .section .rodata
  .Lbynamefn7: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn7]
 lea rsi, [r12 + 112]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain0_n4_α
 jmp xchain0_n4_α
xchain0_n3_β:
 jmp xchain0_n4_α
xchain0_n4_α:
bb5_α:
# BOX IR_CALL put(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = varslot [r12+0] -> [r12+160]
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 168], rax
# marshal arg1 = LIT_I -> [r12+176]
 mov qword ptr [r12 + 176], 6
 movabs rax, 6
 mov qword ptr [r12 + 184], rax
  .section .rodata
  .Lbynamefn9: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn9]
 lea rsi, [r12 + 160]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
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
 jmp xbang10_iter_done
 xbang10_iter_β:
 jmp xchain0_n7_α
xbang10_iter_done:
# IR_LIST_BANG
bb7_α:
 mov qword ptr [r12 + 192], 0
.Lx14_0:
 mov rdi, qword ptr [r12 + 0]
 mov rsi, qword ptr [r12 + 8]
 mov rdx, qword ptr [r12 + 192]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 200], rax
 mov qword ptr [r12 + 208], rdx
 cmp rax, 99
 je xchain0_n7_α
 jmp xchain0_n6_α
 xchain0_n5_β:
 inc qword ptr [r12 + 192]
 jmp .Lx14_0
xchain0_n6_α:
bb8_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 200]
 mov rsi, qword ptr [r12 + 208]
 call rt_write_any_nl@PLT
 jmp xchain0_n5_β
xchain0_n6_β:
xchain0_n6_β:
 jmp xchain0_n5_β
xchain0_n7_α:
# IR_EVERY
 jmp main_ω
 xchain0_n7_β:
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
