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
xargsub2_n0_α:
# IR_LIT_S
bb1_α:
 mov qword ptr [r12 + 0], 1
 mov rax, qword ptr [rip + .Lx3_0]
 mov qword ptr [r12 + 8], rax
 jmp xscan1_subj_done
 xargsub2_n0_β:
 jmp main_ω
.Lx3_0:
 .quad .Lx3_0_s
.Lx3_0_s:
 .string "aaabcd"
xscan1_subj_done:
# IR_GEN_SCAN
 mov rdi, qword ptr [r12 + 0]
 mov rsi, qword ptr [r12 + 8]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xscan1_body_start
 xscan1_enter_β:
 jmp main_ω
xscan1_body_start:
xargsub6_n0_α:
# IR_SCAN_MANY
bb2_α:
 mov eax, r14d
.Lx8_0:
 cmp eax, r15d
 jge .Lx8_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx8_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx8_1
 add eax, 1
 jmp .Lx8_0
.Lx8_1:
 cmp eax, r14d
 je xscan1_body_fail
 mov qword ptr [r12 + 40], 6
 movsxd rcx, eax
 add rcx, 1
 mov qword ptr [r12 + 48], rcx
 jmp xargsub6_n1_α
 xargsub6_n0_β:
 jmp xscan1_body_fail
.Lx8_2:
 .quad .Lx8_2_s
.Lx8_2_s:
 .string "abc"
xargsub6_n1_α:
bb3_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 40]
 mov rsi, qword ptr [r12 + 48]
 call rt_write_any_nl@PLT
 jmp xscan1_body_done
xargsub6_n1_β:
xargsub6_n1_β:
 jmp xscan1_body_fail
xscan1_body_done:
# IR_GEN_SCAN
 lea rdi, [r12 + 16]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 16]
 mov r14, qword ptr [r12 + 24]
 mov r15, qword ptr [r12 + 32]
 jmp main_γ
 xscan1_leaveok_β:
 jmp main_ω
xscan1_body_fail:
# IR_GEN_SCAN
 lea rdi, [r12 + 16]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 16]
 mov r14, qword ptr [r12 + 24]
 mov r15, qword ptr [r12 + 32]
 jmp main_ω
 xscan1_leavef_β:
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
