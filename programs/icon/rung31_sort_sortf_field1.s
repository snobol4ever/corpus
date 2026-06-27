  .intel_syntax noprefix
  .text
proc_startup:
  push rbp
  mov rbp, rsp
  .section .rodata
  .Lclassspec0: .string "point(x,y)"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lclassspec0]
  call record_register@PLT
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
xchain0_n0_α:
bb1_α:
# BOX IR_CALL MAKELIST(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = LIT_I -> [r12+112]
 mov qword ptr [r12 + 112], 6
 movabs rax, 3
 mov qword ptr [r12 + 120], rax
# marshal arg1 = LIT_I -> [r12+128]
 mov qword ptr [r12 + 128], 6
 movabs rax, 10
 mov qword ptr [r12 + 136], rax
  .section .rodata
  .Lcallfn2: .string "point"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn2]
 lea rsi, [r12 + 112]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
# marshal arg0 = LIT_I -> [r12+144]
 mov qword ptr [r12 + 144], 6
 movabs rax, 1
 mov qword ptr [r12 + 152], rax
# marshal arg1 = LIT_I -> [r12+160]
 mov qword ptr [r12 + 160], 6
 movabs rax, 20
 mov qword ptr [r12 + 168], rax
  .section .rodata
  .Lcallfn3: .string "point"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn3]
 lea rsi, [r12 + 144]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
# marshal arg0 = LIT_I -> [r12+176]
 mov qword ptr [r12 + 176], 6
 movabs rax, 2
 mov qword ptr [r12 + 184], rax
# marshal arg1 = LIT_I -> [r12+192]
 mov qword ptr [r12 + 192], 6
 movabs rax, 30
 mov qword ptr [r12 + 200], rax
  .section .rodata
  .Lcallfn4: .string "point"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn4]
 lea rsi, [r12 + 176]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
  .section .rodata
  .Lbynamefn5: .string "MAKELIST"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn5]
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
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp xchain0_n2_α
xchain0_n2_α:
bb3_α:
# BOX IR_CALL sortf(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+0] -> [r12+240]
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 248], rax
# marshal arg1 = LIT_I -> [r12+256]
 mov qword ptr [r12 + 256], 6
 movabs rax, 1
 mov qword ptr [r12 + 264], rax
  .section .rodata
  .Lrkfn8: .string "sortf"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn8]
 lea rsi, [r12 + 240]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 cmp eax, 99
 je xchain0_n4_α
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp xchain0_n4_α
xchain0_n3_α:
bb4_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 224]
 mov rdx, qword ptr [r12 + 232]
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp xchain0_n4_α
xchain0_n4_α:
# IR_VAR
bb5_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xbang10_iter_done
 xbang10_iter_β:
 jmp xchain0_n9_α
xbang10_iter_done:
# IR_LIST_BANG
bb6_α:
 mov qword ptr [r12 + 288], 0
.Lx14_0:
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 mov rdx, qword ptr [r12 + 288]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 296], rax
 mov qword ptr [r12 + 304], rdx
 cmp rax, 99
 je xchain0_n9_α
 jmp xchain0_n5_α
 xchain0_n4_β:
 inc qword ptr [r12 + 288]
 jmp .Lx14_0
xchain0_n5_α:
bb7_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 296]
 mov rdx, qword ptr [r12 + 304]
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 mov qword ptr [r12 + 312], rax
 mov qword ptr [r12 + 320], rdx
 jmp xchain0_n6_α
 xchain0_n5_β:
 jmp xchain0_n4_β
xchain0_n6_α:
# IR_VAR
bb8_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xchain0_n7_α
 xchain0_n6_β:
 jmp xchain0_n4_β
xchain0_n7_α:
# IR_FIELD_GET
bb9_α:
 mov rdi, qword ptr [rip + .Lx19_0]
 mov rsi, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 call dat_field_get@PLT
 mov qword ptr [r12 + 328], rax
 mov qword ptr [r12 + 336], rdx
 jmp xchain0_n8_α
 xchain0_n7_β:
 jmp xchain0_n4_β
.Lx19_0:
 .quad .Lx19_0_s
.Lx19_0_s:
 .string "x"
xchain0_n8_α:
bb10_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 328]
 mov rsi, qword ptr [r12 + 336]
 call rt_write_any_nl@PLT
 jmp xchain0_n4_β
xchain0_n8_β:
xchain0_n8_β:
 jmp xchain0_n4_β
xchain0_n9_α:
# IR_EVERY
 jmp main_ω
 xchain0_n9_β:
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
