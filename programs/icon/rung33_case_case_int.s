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
# IR_LIT_I
bb1_α:
 mov qword ptr [r12 + 0], 6
 mov rax, qword ptr [rip + .Lx1_0]
 mov qword ptr [r12 + 8], rax
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp xchain0_n3_α
.Lx1_0:
 .quad 2
xchain0_n1_α:
# IR_LIT_I
bb2_α:
 mov qword ptr [r12 + 32], 6
 mov rax, qword ptr [rip + .Lx3_0]
 mov qword ptr [r12 + 40], rax
 jmp xcase2_key0_done
 xcase2_key0_β:
 jmp xchain0_n3_α
.Lx3_0:
 .quad 1
xcase2_key0_done:
# IR_CASE_ARM
 lea rdi, [r12 + 0]
 lea rsi, [r12 + 32]
 call rt_case_eq@PLT
 test eax, eax
 jz xcase2_next0
 jmp xcase2_take0
 xcase2_cmp0_β:
 jmp xcase2_next0
xcase2_take0:
# IR_LIT_S
bb4_α:
 mov qword ptr [r12 + 48], 1
 mov rax, qword ptr [rip + .Lx5_0]
 mov qword ptr [r12 + 56], rax
 jmp xcase2_val0_done
 xcase2_val0_β:
 jmp xchain0_n3_α
.Lx5_0:
 .quad .Lx5_0_s
.Lx5_0_s:
 .string "one"
xcase2_val0_done:
# IR_CASE_ARM take
 mov rax, qword ptr [r12 + 48]
 mov rdx, qword ptr [r12 + 56]
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xchain0_n2_α
 xcase2_take0_β:
 jmp xchain0_n3_α
xcase2_next0:
# IR_LIT_I
bb6_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx7_0]
 mov qword ptr [r12 + 72], rax
 jmp xcase2_key1_done
 xcase2_key1_β:
 jmp xchain0_n3_α
.Lx7_0:
 .quad 2
xcase2_key1_done:
# IR_CASE_ARM
 lea rdi, [r12 + 0]
 lea rsi, [r12 + 64]
 call rt_case_eq@PLT
 test eax, eax
 jz xcase2_next1
 jmp xcase2_take1
 xcase2_cmp1_β:
 jmp xcase2_next1
xcase2_take1:
# IR_LIT_S
bb8_α:
 mov qword ptr [r12 + 80], 1
 mov rax, qword ptr [rip + .Lx9_0]
 mov qword ptr [r12 + 88], rax
 jmp xcase2_val1_done
 xcase2_val1_β:
 jmp xchain0_n3_α
.Lx9_0:
 .quad .Lx9_0_s
.Lx9_0_s:
 .string "two"
xcase2_val1_done:
# IR_CASE_ARM take
 mov rax, qword ptr [r12 + 80]
 mov rdx, qword ptr [r12 + 88]
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xchain0_n2_α
 xcase2_take1_β:
 jmp xchain0_n3_α
xcase2_next1:
# IR_LIT_I
bb10_α:
 mov qword ptr [r12 + 96], 6
 mov rax, qword ptr [rip + .Lx11_0]
 mov qword ptr [r12 + 104], rax
 jmp xcase2_key2_done
 xcase2_key2_β:
 jmp xchain0_n3_α
.Lx11_0:
 .quad 3
xcase2_key2_done:
# IR_CASE_ARM
 lea rdi, [r12 + 0]
 lea rsi, [r12 + 96]
 call rt_case_eq@PLT
 test eax, eax
 jz xcase2_next2
 jmp xcase2_take2
 xcase2_cmp2_β:
 jmp xcase2_next2
xcase2_take2:
# IR_LIT_S
bb12_α:
 mov qword ptr [r12 + 112], 1
 mov rax, qword ptr [rip + .Lx13_0]
 mov qword ptr [r12 + 120], rax
 jmp xcase2_val2_done
 xcase2_val2_β:
 jmp xchain0_n3_α
.Lx13_0:
 .quad .Lx13_0_s
.Lx13_0_s:
 .string "three"
xcase2_val2_done:
# IR_CASE_ARM take
 mov rax, qword ptr [r12 + 112]
 mov rdx, qword ptr [r12 + 120]
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xchain0_n2_α
 xcase2_take2_β:
 jmp xchain0_n3_α
xcase2_next2:
# IR_LIT_S
bb14_α:
 mov qword ptr [r12 + 128], 1
 mov rax, qword ptr [rip + .Lx15_0]
 mov qword ptr [r12 + 136], rax
 jmp xcase2_def_done
 xcase2_def_β:
 jmp xchain0_n3_α
.Lx15_0:
 .quad .Lx15_0_s
.Lx15_0_s:
 .string "other"
xcase2_def_done:
# IR_CASE_ARM take
 mov rax, qword ptr [r12 + 128]
 mov rdx, qword ptr [r12 + 136]
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xchain0_n2_α
 xcase2_deftake_β:
 jmp xchain0_n3_α
xchain0_n2_α:
bb16_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 call rt_write_any_nl@PLT
 jmp xchain0_n3_α
xchain0_n2_β:
xchain0_n2_β:
 jmp xchain0_n3_α
xchain0_n3_α:
# IR_LIT_I
bb17_α:
 mov qword ptr [r12 + 144], 6
 mov rax, qword ptr [rip + .Lx18_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp main_ω
.Lx18_0:
 .quad 5
xchain0_n4_α:
# IR_LIT_I
bb18_α:
 mov qword ptr [r12 + 176], 6
 mov rax, qword ptr [rip + .Lx20_0]
 mov qword ptr [r12 + 184], rax
 jmp xcase19_key0_done
 xcase19_key0_β:
 jmp main_ω
.Lx20_0:
 .quad 1
xcase19_key0_done:
# IR_CASE_ARM
 lea rdi, [r12 + 144]
 lea rsi, [r12 + 176]
 call rt_case_eq@PLT
 test eax, eax
 jz xcase19_next0
 jmp xcase19_take0
 xcase19_cmp0_β:
 jmp xcase19_next0
xcase19_take0:
# IR_LIT_S
bb20_α:
 mov qword ptr [r12 + 192], 1
 mov rax, qword ptr [rip + .Lx22_0]
 mov qword ptr [r12 + 200], rax
 jmp xcase19_val0_done
 xcase19_val0_β:
 jmp main_ω
.Lx22_0:
 .quad .Lx22_0_s
.Lx22_0_s:
 .string "one"
xcase19_val0_done:
# IR_CASE_ARM take
 mov rax, qword ptr [r12 + 192]
 mov rdx, qword ptr [r12 + 200]
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp xchain0_n5_α
 xcase19_take0_β:
 jmp main_ω
xcase19_next0:
# IR_LIT_I
bb22_α:
 mov qword ptr [r12 + 208], 6
 mov rax, qword ptr [rip + .Lx24_0]
 mov qword ptr [r12 + 216], rax
 jmp xcase19_key1_done
 xcase19_key1_β:
 jmp main_ω
.Lx24_0:
 .quad 2
xcase19_key1_done:
# IR_CASE_ARM
 lea rdi, [r12 + 144]
 lea rsi, [r12 + 208]
 call rt_case_eq@PLT
 test eax, eax
 jz xcase19_next1
 jmp xcase19_take1
 xcase19_cmp1_β:
 jmp xcase19_next1
xcase19_take1:
# IR_LIT_S
bb24_α:
 mov qword ptr [r12 + 224], 1
 mov rax, qword ptr [rip + .Lx26_0]
 mov qword ptr [r12 + 232], rax
 jmp xcase19_val1_done
 xcase19_val1_β:
 jmp main_ω
.Lx26_0:
 .quad .Lx26_0_s
.Lx26_0_s:
 .string "two"
xcase19_val1_done:
# IR_CASE_ARM take
 mov rax, qword ptr [r12 + 224]
 mov rdx, qword ptr [r12 + 232]
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp xchain0_n5_α
 xcase19_take1_β:
 jmp main_ω
xcase19_next1:
# IR_LIT_I
bb26_α:
 mov qword ptr [r12 + 240], 6
 mov rax, qword ptr [rip + .Lx28_0]
 mov qword ptr [r12 + 248], rax
 jmp xcase19_key2_done
 xcase19_key2_β:
 jmp main_ω
.Lx28_0:
 .quad 3
xcase19_key2_done:
# IR_CASE_ARM
 lea rdi, [r12 + 144]
 lea rsi, [r12 + 240]
 call rt_case_eq@PLT
 test eax, eax
 jz xcase19_next2
 jmp xcase19_take2
 xcase19_cmp2_β:
 jmp xcase19_next2
xcase19_take2:
# IR_LIT_S
bb28_α:
 mov qword ptr [r12 + 256], 1
 mov rax, qword ptr [rip + .Lx30_0]
 mov qword ptr [r12 + 264], rax
 jmp xcase19_val2_done
 xcase19_val2_β:
 jmp main_ω
.Lx30_0:
 .quad .Lx30_0_s
.Lx30_0_s:
 .string "three"
xcase19_val2_done:
# IR_CASE_ARM take
 mov rax, qword ptr [r12 + 256]
 mov rdx, qword ptr [r12 + 264]
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp xchain0_n5_α
 xcase19_take2_β:
 jmp main_ω
xcase19_next2:
# IR_LIT_S
bb30_α:
 mov qword ptr [r12 + 272], 1
 mov rax, qword ptr [rip + .Lx32_0]
 mov qword ptr [r12 + 280], rax
 jmp xcase19_def_done
 xcase19_def_β:
 jmp main_ω
.Lx32_0:
 .quad .Lx32_0_s
.Lx32_0_s:
 .string "other"
xcase19_def_done:
# IR_CASE_ARM take
 mov rax, qword ptr [r12 + 272]
 mov rdx, qword ptr [r12 + 280]
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp xchain0_n5_α
 xcase19_deftake_β:
 jmp main_ω
xchain0_n5_α:
bb32_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 160]
 mov rsi, qword ptr [r12 + 168]
 call rt_write_any_nl@PLT
 jmp main_γ
xchain0_n5_β:
xchain0_n5_β:
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
