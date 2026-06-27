  .intel_syntax noprefix
  .text
  .globl proc_tag_α
proc_tag_α:
#=======================================================================================================================
    .global proc_tag_α
    .global proc_tag_β
    .global proc_tag_γ
    .global proc_tag_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_tag_α_body:
xchain0_n0_α:
# IR_LIT_S
bb1_α:
 mov qword ptr [r12 + 32], 1
 mov rax, qword ptr [rip + .Lx1_0]
 mov qword ptr [r12 + 40], rax
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp proc_tag_ω
.Lx1_0:
 .quad .Lx1_0_s
.Lx1_0_s:
 .string "["
xchain0_n1_α:
# IR_VAR
bb2_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp proc_tag_ω
xchain0_n2_α:
bb3_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 32]
 mov rsi, qword ptr [r12 + 40]
 mov rdx, qword ptr [r12 + 16]
 mov rcx, qword ptr [r12 + 24]
 call str_concat_d@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp proc_tag_ω
xchain0_n3_α:
# IR_LIT_S
bb4_α:
 mov qword ptr [r12 + 64], 1
 mov rax, qword ptr [rip + .Lx5_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp proc_tag_ω
.Lx5_0:
 .quad .Lx5_0_s
.Lx5_0_s:
 .string "]"
xchain0_n4_α:
bb5_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 48]
 mov rsi, qword ptr [r12 + 56]
 mov rdx, qword ptr [r12 + 64]
 mov rcx, qword ptr [r12 + 72]
 call str_concat_d@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 jmp xchain0_n5_α
 xchain0_n4_β:
 jmp proc_tag_ω
xchain0_n5_α:
# IR_RETURN
bb6_α:
 mov rax, qword ptr [r12 + 80]
 mov rdx, qword ptr [r12 + 88]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_tag_γ
proc_tag_β:
jmp proc_tag_ω
proc_tag_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_tag_ω:
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
  .Lstartup_pname0: .string "tag"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_tag_α]
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
xchain8_n0_α:
bb7_α:
# IR_ALT
 mov qword ptr [r12 + 16], 0
.Lx10_3:
 mov rax, qword ptr [r12 + 16]
 cmp rax, 0
 je .Lx10_4
 mov rax, qword ptr [r12 + 16]
 cmp rax, 1
 je .Lx10_5
 mov rax, qword ptr [r12 + 16]
 cmp rax, 2
 je .Lx10_6
 jmp xchain8_n3_α
.Lx10_4:
 mov qword ptr [r12 + 0], 1
 mov rax, qword ptr [rip + .Lx10_0]
 mov qword ptr [r12 + 8], rax
 mov rax, qword ptr [r12 + 16]
 add rax, 1
 mov qword ptr [r12 + 16], rax
 jmp xchain8_n1_α
.Lx10_5:
 mov qword ptr [r12 + 0], 1
 mov rax, qword ptr [rip + .Lx10_1]
 mov qword ptr [r12 + 8], rax
 mov rax, qword ptr [r12 + 16]
 add rax, 1
 mov qword ptr [r12 + 16], rax
 jmp xchain8_n1_α
.Lx10_6:
 mov qword ptr [r12 + 0], 1
 mov rax, qword ptr [rip + .Lx10_2]
 mov qword ptr [r12 + 8], rax
 mov rax, qword ptr [r12 + 16]
 add rax, 1
 mov qword ptr [r12 + 16], rax
 jmp xchain8_n1_α
 xchain8_n0_β:
 jmp .Lx10_3
.Lx10_0:
 .quad .Lx10_0_s
.Lx10_0_s:
 .string "a"
.Lx10_1:
 .quad .Lx10_1_s
.Lx10_1_s:
 .string "b"
.Lx10_2:
 .quad .Lx10_2_s
.Lx10_2_s:
 .string "c"
xchain8_n1_α:
bb8_α:
  .section .rodata
  .Lcall8_pname: .string "tag"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall8_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 24], rax
 mov qword ptr [r12 + 32], rdx
 cmp eax, 99
 je xchain8_n0_β
 jmp xchain8_n2_α
xchain8_n1_β:
 jmp xchain8_n0_β
xchain8_n2_α:
bb9_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 24]
 mov rsi, qword ptr [r12 + 32]
 call rt_write_any_nl@PLT
 jmp xchain8_n0_β
xchain8_n2_β:
xchain8_n2_β:
 jmp xchain8_n0_β
xchain8_n3_α:
# IR_LIT_S
bb10_α:
 mov qword ptr [r12 + 40], 1
 mov rax, qword ptr [rip + .Lx14_0]
 mov qword ptr [r12 + 48], rax
 jmp xevery13_body_β
 xevery13_body_β:
 jmp main_γ
.Lx14_0:
 .quad .Lx14_0_s
.Lx14_0_s:
 .string "a"
# IR_EVERY
 jmp main_ω
 xchain8_n3_β:
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
