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
 mov qword ptr [r12 + 32], 1
 mov rax, qword ptr [rip + .Lx1_0]
 mov qword ptr [r12 + 40], rax
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp xchain0_n2_α
.Lx1_0:
 .quad .Lx1_0_s
.Lx1_0_s:
 .string "the quick brown fox jumps over the lazy dog"
xchain0_n1_α:
bb2_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp xchain0_n2_α
xchain0_n2_α:
# IR_LIT_I
bb3_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx3_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp xchain0_n4_α
.Lx3_0:
 .quad 0
xchain0_n3_α:
bb4_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 64]
 mov rdx, qword ptr [r12 + 72]
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp xchain0_n4_α
xchain0_n4_α:
xargsub6_n0_α:
# IR_VAR
bb5_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xscan5_subj_done
 xargsub6_n0_β:
 jmp xchain0_n5_α
xscan5_subj_done:
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
 jmp xscan5_body_start
 xscan5_enter_β:
 jmp xchain0_n5_α
xscan5_body_start:
xargsub11_n0_α:
xargsub13_n0_α:
# IR_SCAN_UPTO
bb6_α:
 mov qword ptr [r12 + 136], r14
.Lx15_0:
 mov rax, qword ptr [r12 + 136]
 cmp rax, r15
 jge xargsub11_n2_α
 mov rcx, rax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx15_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx15_1
 mov qword ptr [r12 + 120], 6
 add rax, 1
 mov qword ptr [r12 + 128], rax
 jmp xscantab12_arg_done
.Lx15_1:
 inc qword ptr [r12 + 136]
 jmp .Lx15_0
 xargsub13_n0_β:
 inc qword ptr [r12 + 136]
 jmp .Lx15_0
.Lx15_2:
 .quad .Lx15_2_s
.Lx15_2_s:
 .string "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
xscantab12_arg_done:
# IR_SCAN_TAB
bb7_α:
 mov rax, qword ptr [r12 + 128]
 cmp rax, 1
 jl xargsub11_n2_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xargsub11_n2_α
 mov qword ptr [r12 + 160], r14
 mov rdi, r13
 mov rsi, r14
 mov rdx, rax
 sub rdx, 1
 mov r14, rdx
 push r10
 push r10
 call rt_substr@PLT
 pop r10
 pop r10
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp xargsub11_n1_α
 xargsub11_n0_β:
 mov r14, qword ptr [r12 + 160]
 jmp xargsub11_n2_α
xargsub11_n1_α:
xargsub19_n0_α:
# IR_SCAN_MANY
bb8_α:
 mov eax, r14d
.Lx21_0:
 cmp eax, r15d
 jge .Lx21_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx21_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx21_1
 add eax, 1
 jmp .Lx21_0
.Lx21_1:
 cmp eax, r14d
 je xargsub11_n3_α
 mov qword ptr [r12 + 168], 6
 movsxd rcx, eax
 add rcx, 1
 mov qword ptr [r12 + 176], rcx
 jmp xscantab18_arg_done
 xargsub19_n0_β:
 jmp xargsub11_n3_α
.Lx21_2:
 .quad .Lx21_2_s
.Lx21_2_s:
 .string "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
xscantab18_arg_done:
# IR_SCAN_TAB
bb9_α:
 mov rax, qword ptr [r12 + 176]
 cmp rax, 1
 jl xargsub11_n3_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xargsub11_n3_α
 mov qword ptr [r12 + 200], r14
 mov rdi, r13
 mov rsi, r14
 mov rdx, rax
 sub rdx, 1
 mov r14, rdx
 push r10
 push r10
 call rt_substr@PLT
 pop r10
 pop r10
 mov qword ptr [r12 + 184], rax
 mov qword ptr [r12 + 192], rdx
 jmp xargsub11_n3_α
 xargsub11_n1_β:
 mov r14, qword ptr [r12 + 200]
 jmp xargsub11_n3_α
xargsub11_n2_α:
xargsub11_n2_β:
jmp xscan5_body_done
jmp xscan5_body_done
xargsub11_n3_α:
# IR_VAR
bb10_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xargsub11_n4_α
 xargsub11_n3_β:
 jmp xargsub11_n0_α
xargsub11_n4_α:
# IR_LIT_I
bb11_α:
 mov qword ptr [r12 + 208], 6
 mov rax, qword ptr [rip + .Lx26_0]
 mov qword ptr [r12 + 216], rax
 jmp xargsub11_n5_α
 xargsub11_n4_β:
 jmp xargsub11_n0_α
.Lx26_0:
 .quad 1
xargsub11_n5_α:
bb12_α:
# IR_BINOP_ARITH
 mov rax, qword ptr [r12 + 24]
 mov rcx, qword ptr [r12 + 216]
 add rax, rcx
 mov qword ptr [r12 + 224], 6
 mov qword ptr [r12 + 232], rax
 jmp xargsub11_n6_α
 xargsub11_n5_β:
 jmp xargsub11_n0_α
xargsub11_n6_α:
bb13_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 224]
 mov rdx, qword ptr [r12 + 232]
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp xargsub11_n7_α
 xargsub11_n6_β:
 jmp xargsub11_n0_α
xargsub11_n7_α:
jmp xargsub11_n0_α
xargsub11_n7_β:
jmp xargsub11_n0_α
xscan5_body_done:
# IR_GEN_SCAN
 lea rdi, [r12 + 96]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 96]
 mov r14, qword ptr [r12 + 104]
 mov r15, qword ptr [r12 + 112]
 jmp xchain0_n5_α
 xscan5_leaveok_β:
 jmp xchain0_n5_α
xscan5_body_fail:
# IR_GEN_SCAN
 lea rdi, [r12 + 96]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 96]
 mov r14, qword ptr [r12 + 104]
 mov r15, qword ptr [r12 + 112]
 jmp xchain0_n5_α
 xscan5_leavef_β:
 jmp xchain0_n5_α
xchain0_n5_α:
# IR_VAR
bb14_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain0_n6_α
 xchain0_n5_β:
 jmp main_ω
xchain0_n6_α:
bb15_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 call rt_write_any_nl@PLT
 jmp main_γ
xchain0_n6_β:
xchain0_n6_β:
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
