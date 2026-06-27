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
# BOX IR_CALL set(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn2: .string "set"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2]
 lea rsi, [r12 + 48]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je xchain0_n2_α
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp xchain0_n2_α
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
bb3_α:
# BOX IR_CALL read(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn5: .string "read"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn5]
 lea rsi, [r12 + 80]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je xchain0_n4_α
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp xchain0_n4_α
xchain0_n3_α:
bb4_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 64]
 mov rdx, qword ptr [r12 + 72]
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 jmp xchain0_n5_α
 xchain0_n3_β:
 jmp xchain0_n4_α
xchain0_n4_α:
xchain0_n4_β:
jmp xchain0_n6_α
jmp xchain0_n6_α
xchain0_n5_α:
xargsub8_n0_α:
# IR_VAR
bb5_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xscan7_subj_done
 xargsub8_n0_β:
 jmp xchain0_n2_α
xscan7_subj_done:
# IR_GEN_SCAN
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xscan7_body_start
 xscan7_enter_β:
 jmp xchain0_n2_α
xscan7_body_start:
xargsub13_n0_α:
xargsub15_n0_α:
# IR_SCAN_UPTO
bb6_α:
 mov qword ptr [r12 + 136], r14
.Lx17_0:
 mov rax, qword ptr [r12 + 136]
 cmp rax, r15
 jge xargsub13_n2_α
 mov rcx, rax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx17_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx17_1
 mov qword ptr [r12 + 120], 6
 add rax, 1
 mov qword ptr [r12 + 128], rax
 jmp xscantab14_arg_done
.Lx17_1:
 inc qword ptr [r12 + 136]
 jmp .Lx17_0
 xargsub15_n0_β:
 inc qword ptr [r12 + 136]
 jmp .Lx17_0
.Lx17_2:
 .quad .Lx17_2_s
.Lx17_2_s:
 .string "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
xscantab14_arg_done:
# IR_SCAN_TAB
bb7_α:
 mov rax, qword ptr [r12 + 128]
 cmp rax, 1
 jl xargsub13_n2_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xargsub13_n2_α
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
 jmp xargsub13_n1_α
 xargsub13_n0_β:
 mov r14, qword ptr [r12 + 160]
 jmp xargsub13_n2_α
xargsub13_n1_α:
bb8_α:
# BOX IR_CALL insert(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+0] -> [r12+184]
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 184], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 192], rax
# marshal arg0 = nested producer-box slot [r12+232] -> [r12+232]
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 232], rax
 mov rax, qword ptr [r12 + 240]
 mov qword ptr [r12 + 240], rax
  .section .rodata
  .Lcallfn21: .string "many"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn21]
 lea rsi, [r12 + 232]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 216], rax
 mov qword ptr [r12 + 224], rdx
  .section .rodata
  .Lcallfn22: .string "tab"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn22]
 lea rsi, [r12 + 216]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 200], rax
 mov qword ptr [r12 + 208], rdx
  .section .rodata
  .Lrkfn23: .string "insert"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn23]
 lea rsi, [r12 + 184]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 168], rax
 mov qword ptr [r12 + 176], rdx
 cmp eax, 99
 je xargsub13_n0_α
 jmp xargsub13_n0_α
 xargsub13_n1_β:
 jmp xargsub13_n0_α
xargsub13_n2_α:
xargsub13_n2_β:
jmp xscan7_body_done
jmp xscan7_body_done
xscan7_body_done:
# IR_GEN_SCAN
 lea rdi, [r12 + 96]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 96]
 mov r14, qword ptr [r12 + 104]
 mov r15, qword ptr [r12 + 112]
 jmp xchain0_n2_α
 xscan7_leaveok_β:
 jmp xchain0_n2_α
xscan7_body_fail:
# IR_GEN_SCAN
 lea rdi, [r12 + 96]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 96]
 mov r14, qword ptr [r12 + 104]
 mov r15, qword ptr [r12 + 112]
 jmp xchain0_n2_α
 xscan7_leavef_β:
 jmp xchain0_n2_α
xchain0_n6_α:
bb9_α:
# BOX IR_CALL sort(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+0] -> [r12+264]
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 264], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 272], rax
  .section .rodata
  .Lrkfn30: .string "sort"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn30]
 lea rsi, [r12 + 264]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 248], rax
 mov qword ptr [r12 + 256], rdx
 cmp eax, 99
 je xchain0_n8_α
 jmp xbang28_iter_done
 xbang28_iter_β:
 jmp xchain0_n8_α
xbang28_iter_done:
# IR_LIST_BANG
bb10_α:
 mov qword ptr [r12 + 280], 0
.Lx32_0:
 mov rdi, qword ptr [r12 + 248]
 mov rsi, qword ptr [r12 + 256]
 mov rdx, qword ptr [r12 + 280]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 cmp rax, 99
 je xchain0_n8_α
 jmp xchain0_n7_α
 xchain0_n6_β:
 inc qword ptr [r12 + 280]
 jmp .Lx32_0
xchain0_n7_α:
bb11_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 288]
 mov rsi, qword ptr [r12 + 296]
 call rt_write_any_nl@PLT
 jmp xchain0_n6_β
xchain0_n7_β:
xchain0_n7_β:
 jmp xchain0_n6_β
xchain0_n8_α:
# IR_EVERY
 jmp main_ω
 xchain0_n8_β:
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
