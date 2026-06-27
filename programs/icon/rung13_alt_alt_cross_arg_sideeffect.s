  .intel_syntax noprefix
  .text
  .globl proc_noisy_α
proc_noisy_α:
#=======================================================================================================================
    .global proc_noisy_α
    .global proc_noisy_β
    .global proc_noisy_γ
    .global proc_noisy_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_noisy_α_body:
xchain0_n0_α:
# IR_LIT_S
bb1_α:
 mov qword ptr [r12 + 16], 1
 mov rax, qword ptr [rip + .Lx1_0]
 mov qword ptr [r12 + 24], rax
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp xchain0_n2_α
.Lx1_0:
 .quad .Lx1_0_s
.Lx1_0_s:
 .string "[eval]"
xchain0_n1_α:
bb2_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 call rt_write_any_nl@PLT
 jmp xchain0_n2_α
xchain0_n1_β:
xchain0_n1_β:
 jmp xchain0_n2_α
xchain0_n2_α:
# IR_LIT_S
bb3_α:
 mov qword ptr [r12 + 32], 1
 mov rax, qword ptr [rip + .Lx3_0]
 mov qword ptr [r12 + 40], rax
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp proc_noisy_ω
.Lx3_0:
 .quad .Lx3_0_s
.Lx3_0_s:
 .string "X"
xchain0_n3_α:
# IR_RETURN
bb4_α:
 mov rax, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_noisy_γ
proc_noisy_β:
jmp proc_noisy_ω
proc_noisy_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_noisy_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
proc_startup:
  push rbp
  mov rbp, rsp
  .section .rodata
  .Lstartup_pname0: .string "noisy"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_noisy_α]
  call rt_proc_set_fn@PLT
  pop rbp
  ret
  .globl main
main:
  push rbp
  mov rbp, rsp
  call proc_startup
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
xchain5_n0_α:
bb5_α:
# IR_ALT
 mov qword ptr [r12 + 16], 0
.Lx7_2:
 mov rax, qword ptr [r12 + 16]
 cmp rax, 0
 je .Lx7_3
 mov rax, qword ptr [r12 + 16]
 cmp rax, 1
 je .Lx7_4
 jmp xchain5_n4_α
.Lx7_3:
 mov qword ptr [r12 + 0], 6
 mov rax, qword ptr [rip + .Lx7_0]
 mov qword ptr [r12 + 8], rax
 mov rax, qword ptr [r12 + 16]
 add rax, 1
 mov qword ptr [r12 + 16], rax
 jmp xchain5_n1_α
.Lx7_4:
 mov qword ptr [r12 + 0], 6
 mov rax, qword ptr [rip + .Lx7_1]
 mov qword ptr [r12 + 8], rax
 mov rax, qword ptr [r12 + 16]
 add rax, 1
 mov qword ptr [r12 + 16], rax
 jmp xchain5_n1_α
 xchain5_n0_β:
 jmp .Lx7_2
.Lx7_0:
 .quad 1
.Lx7_1:
 .quad 2
xchain5_n1_α:
bb6_α:
  .section .rodata
  .Lcall6_pname: .string "noisy"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall6_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 24], rax
 mov qword ptr [r12 + 32], rdx
 cmp eax, 99
 je xchain5_n0_β
 jmp xchain5_n2_α
xchain5_n1_β:
 jmp xchain5_n0_β
xchain5_n2_α:
bb7_α:
# IR_ALT
 mov qword ptr [r12 + 56], 0
.Lx10_2:
 mov rax, qword ptr [r12 + 56]
 cmp rax, 0
 je .Lx10_3
 mov rax, qword ptr [r12 + 56]
 cmp rax, 1
 je .Lx10_4
 jmp xchain5_n0_β
.Lx10_3:
 mov qword ptr [r12 + 40], 6
 mov rax, qword ptr [rip + .Lx10_0]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 56]
 add rax, 1
 mov qword ptr [r12 + 56], rax
 jmp xchain5_n3_α
.Lx10_4:
 mov qword ptr [r12 + 40], 6
 mov rax, qword ptr [rip + .Lx10_1]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 56]
 add rax, 1
 mov qword ptr [r12 + 56], rax
 jmp xchain5_n3_α
 xchain5_n2_β:
 jmp .Lx10_2
.Lx10_0:
 .quad 3
.Lx10_1:
 .quad 4
xchain5_n3_α:
bb8_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = nested producer-box slot [r12+0] -> [r12+80]
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 88], rax
  .section .rodata
  .Lcallfn12: .string "noisy"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn12]
 lea rsi, [r12 + 128]
 mov edx, 0
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
# marshal arg2 = nested producer-box slot [r12+40] -> [r12+112]
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn13: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn13]
 lea rsi, [r12 + 80]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je xchain5_n2_β
 jmp xchain5_n2_β
 xchain5_n3_β:
 jmp xchain5_n2_β
xchain5_n4_α:
# IR_LIT_I
bb9_α:
 mov qword ptr [r12 + 144], 6
 mov rax, qword ptr [rip + .Lx15_0]
 mov qword ptr [r12 + 152], rax
 jmp xevery14_body_β
 xevery14_body_β:
 jmp main_γ
.Lx15_0:
 .quad 1
# IR_EVERY
 jmp main_ω
 xchain5_n4_β:
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
