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
# BOX IR_CALL [](...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+16]
 mov qword ptr [r12 + 16], 1
 mov rax, qword ptr [rip + .Lx1_0]
 mov qword ptr [r12 + 24], rax
 jmp .Lx1_1
.Lx1_0:
 .quad .Lx1_0_s
.Lx1_0_s:
 .string "icon"
.Lx1_1:
# marshal arg1 = LIT_I -> [r12+32]
 mov qword ptr [r12 + 32], 6
 movabs rax, 2
 mov qword ptr [r12 + 40], rax
  .section .rodata
  .Lbynamefn2: .string "[]"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn2]
 lea rsi, [r12 + 16]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 cmp eax, 99
 je main_ω
 jmp xchain0_n1_α
xchain0_n0_β:
 jmp main_ω
xchain0_n1_α:
bb2_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 0]
 mov rsi, qword ptr [r12 + 8]
 call rt_write_any_nl@PLT
 jmp main_γ
xchain0_n1_β:
xchain0_n1_β:
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
