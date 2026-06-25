  .intel_syntax noprefix
  .text
  .section .rodata
  .Lgvan0: .string "T1"
  .Lgvan1: .string "N"
  .Lgvan2: .string "T2"
  .align 8
__gva_names:
  .quad .Lgvan0
  .quad .Lgvan1
  .quad .Lgvan2
  .section .bss
  .align 16
__gva: .space 48, 0
  .section .text
  .intel_syntax noprefix
  .globl main
main:
  push rbp
  mov rbp, rsp
  call core_lib_init@PLT
  call rt_proc_reset@PLT
  lea rdi, [rip + __gva_names]
  lea rsi, [rip + __gva]
  mov edx, 3
  call gva_register@PLT
  mov rbx, rax
  call rt_frame@PLT
  mov rdi, rax
  xor esi, esi
  call flat_α
  xor eax, eax
  pop rbp
  ret
flat_α:
#=======================================================================================================================
    .global flat_α
    .global flat_β
    .global flat_γ
    .global flat_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
flat_α_body:
snoch0_n0_α:
# IR_LIT_scalar
bb1_α:
 jmp snoch0_n1_α
 snoch0_n0_β:
 jmp snoch0_n2_α
snoch0_n1_α:
bb2_α:
# IR_ASSIGN
 lea rdi, [rip + .S0]
 movabs rsi, 1
 call rt_gvar_assign_int@PLT
 jmp snoch0_n2_α
 snoch0_n1_β:
 jmp snoch0_n2_α
snoch0_n2_α:
# IR_LIT_scalar
bb3_α:
 jmp snoch0_n3_α
 snoch0_n2_β:
 jmp snoch0_n4_α
snoch0_n3_α:
bb4_α:
# IR_ASSIGN
 lea rdi, [rip + .S1]
 movabs rsi, 10000000
 call rt_gvar_assign_int@PLT
 jmp snoch0_n4_α
 snoch0_n3_β:
 jmp snoch0_n4_α
snoch0_n4_α:
bb5_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn6: .string "TIME"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn6]
 lea rsi, [r12 + 16]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 cmp eax, 99
 je snoch0_n6_α
 jmp snoch0_n5_α
 snoch0_n4_β:
 jmp snoch0_n6_α
snoch0_n5_α:
bb6_α:
# IR_ASSIGN_CALL gva
 mov rax, qword ptr [r12 + 0]
 mov rcx, qword ptr [r12 + 8]
 mov qword ptr [rbx + 0], rax
 mov qword ptr [rbx + 8], rcx
 jmp snoch0_n6_α
 snoch0_n5_β:
 jmp snoch0_n6_α
snoch0_n6_α:
# IR_LIT_scalar
bb7_α:
 jmp snoch0_n7_α
 snoch0_n6_β:
 jmp snoch0_n8_α
snoch0_n7_α:
bb8_α:
# IR_ASSIGN_LIT_I
 lea rdi, [rip + .S3]
 movabs rsi, 0
 call rt_gvar_assign_int@PLT
 jmp snoch0_n8_α
 snoch0_n7_β:
 jmp snoch0_n8_α
snoch0_n8_α:
# IR_VAR gva
bb9_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp snoch0_n9_α
 snoch0_n8_β:
 jmp snoch0_n10_α
snoch0_n9_α:
# IR_LIT_scalar
bb10_α:
 jmp snoch0_n11_α
 snoch0_n9_β:
 jmp snoch0_n10_α
snoch0_n10_α:
# IR_VAR gva
bb11_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 jmp xgvarg13_done
 xgvarg13_β:
 jmp snoch0_n13_α
xgvarg13_done:
# IR_LIT_I
bb12_α:
 mov qword ptr [r12 + 48], 6
 mov rax, qword ptr [rip + .Lx17_0]
 mov qword ptr [r12 + 56], rax
 jmp xgvarg16_done
 xgvarg16_β:
 jmp snoch0_n13_α
.Lx17_0:
 .quad 1000000
xgvarg16_done:
bb13_α:
# BOX IR_CALL LT(...) inline integer relop [four-port, FAIL->ω]
 mov rdx, qword ptr [rbx + 16]
 cmp edx, 6
 jne .Lx19_0
 mov rax, qword ptr [rbx + 24]
 jmp .Lx19_1
.Lx19_0:
   lea rdi, [rip + .S3]
 call rt_gvar_get_int@PLT
.Lx19_1:
 mov qword ptr [r12 + 80], rax
 mov rcx, 1000000
 mov qword ptr [r12 + 64], 0
 mov qword ptr [r12 + 72], 0
 mov rax, qword ptr [r12 + 80]
 cmp rax, rcx
 jge snoch0_n13_α
 jmp snoch0_n12_α
 snoch0_n10_β:
 jmp snoch0_n13_α
snoch0_n11_α:
bb14_α:
# IR_BINOP_GVAR_ARITH
 mov rdx, qword ptr [rbx + 16]
 cmp edx, 6
 jne .Lx21_0
 mov rax, qword ptr [rbx + 24]
 jmp .Lx21_1
.Lx21_0:
 lea rdi, [rip + .S3]
 call rt_gvar_get_int@PLT
.Lx21_1:
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 96], rax
 jmp snoch0_n14_α
 snoch0_n11_β:
 jmp snoch0_n10_α
snoch0_n12_α:
# IR_VAR gva
bb15_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 104], rax
 mov qword ptr [r12 + 112], rdx
 jmp snoch0_n15_α
 snoch0_n12_β:
 jmp snoch0_n13_α
snoch0_n13_α:
bb16_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn25: .string "TIME"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn25]
 lea rsi, [r12 + 136]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 120], rax
 mov qword ptr [r12 + 128], rdx
 cmp eax, 99
 je snoch0_n17_α
 jmp snoch0_n16_α
 snoch0_n13_β:
 jmp snoch0_n17_α
snoch0_n14_α:
bb17_α:
# IR_ASSIGN
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [rbx + 16], 6
 mov qword ptr [rbx + 24], rax
 jmp snoch0_n10_α
 snoch0_n14_β:
 jmp snoch0_n10_α
snoch0_n15_α:
bb18_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 64]
 mov rsi, qword ptr [r12 + 72]
 mov rdx, qword ptr [r12 + 104]
 mov rcx, qword ptr [r12 + 112]
 call str_concat_d@PLT
 mov qword ptr [r12 + 136], rax
 mov qword ptr [r12 + 144], rdx
 jmp snoch0_n18_α
 snoch0_n15_β:
 jmp snoch0_n13_α
snoch0_n16_α:
bb19_α:
# IR_ASSIGN_CALL gva
 mov rax, qword ptr [r12 + 120]
 mov rcx, qword ptr [r12 + 128]
 mov qword ptr [rbx + 32], rax
 mov qword ptr [rbx + 40], rcx
 jmp snoch0_n17_α
 snoch0_n16_β:
 jmp snoch0_n17_α
snoch0_n17_α:
bb20_α:
# IR_ASSIGN_CONCAT 2 parts
 mov dword ptr [r12 + 152], 0
 lea rax, [rip + .S6]
 mov qword ptr [r12 + 160], rax
 mov dword ptr [r12 + 168], 1
 lea rax, [rip + .S3]
 mov qword ptr [r12 + 176], rax
 lea rdi, [rip + .S5]
 lea rsi, [r12 + 152]
 mov edx, 2
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_gvar_assign_concat_parts@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp snoch0_n19_α
 snoch0_n17_β:
 jmp snoch0_n19_α
snoch0_n18_α:
bb21_α:
# IR_ASSIGN
 mov rax, qword ptr [r12 + 136]
 mov rcx, qword ptr [r12 + 144]
 mov qword ptr [rbx + 16], rax
 mov qword ptr [rbx + 24], rcx
 jmp snoch0_n8_α
 snoch0_n18_β:
 jmp snoch0_n13_α
snoch0_n19_α:
# IR_LIT_scalar
bb22_α:
 jmp snoch0_n20_α
 snoch0_n19_β:
 jmp flat_γ
snoch0_n20_α:
# IR_VAR gva
bb23_α:
 mov rax, qword ptr [rbx + 32]
 mov rdx, qword ptr [rbx + 40]
 mov qword ptr [r12 + 184], rax
 mov qword ptr [r12 + 192], rdx
 jmp snoch0_n21_α
 snoch0_n20_β:
 jmp flat_γ
snoch0_n21_α:
# IR_VAR gva
bb24_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 200], rax
 mov qword ptr [r12 + 208], rdx
 jmp snoch0_n22_α
 snoch0_n21_β:
 jmp flat_γ
snoch0_n22_α:
bb25_α:
# IR_BINOP_GVAR_ARITH
 mov rdx, qword ptr [rbx + 0]
 cmp edx, 6
 jne .Lx39_0
 mov rcx, qword ptr [rbx + 8]
 jmp .Lx39_1
.Lx39_0:
 lea rdi, [rip + .S2]
 call rt_gvar_get_int@PLT
 mov rcx, rax
.Lx39_1:
 mov qword ptr [r12 + 216], rcx
 mov rdx, qword ptr [rbx + 32]
 cmp edx, 6
 jne .Lx39_2
 mov rax, qword ptr [rbx + 40]
 jmp .Lx39_3
.Lx39_2:
 lea rdi, [rip + .S4]
 call rt_gvar_get_int@PLT
.Lx39_3:
 mov rcx, qword ptr [r12 + 216]
 sub rax, rcx
 mov qword ptr [r12 + 216], rax
 jmp snoch0_n23_α
 snoch0_n22_β:
 jmp flat_γ
snoch0_n23_α:
# IR_LIT_S
bb26_α:
 mov qword ptr [r12 + 224], 1
 mov rax, qword ptr [rip + .Lx41_0]
 mov qword ptr [r12 + 232], rax
 jmp xgvcat40_0d
 xgvcat40_0b:
 jmp flat_γ
.Lx41_0:
 .quad .Lx41_0_s
.Lx41_0_s:
 .string "ms: "
xgvcat40_0d:
bb27_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 224]
 mov rsi, qword ptr [r12 + 232]
 mov rdx, 6
 mov rcx, qword ptr [r12 + 216]
 call str_concat_d@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp snoch0_n24_α
 snoch0_n23_β:
 jmp flat_γ
snoch0_n24_α:
bb28_α:
# IR_ASSIGN
 lea rdi, [rip + .S5]
 mov rsi, qword ptr [r12 + 240]
 mov rdx, qword ptr [r12 + 248]
 call rt_gvar_assign_descr@PLT
 jmp flat_γ
 snoch0_n24_β:
 jmp flat_γ
flat_β:
jmp flat_ω
flat_γ:
mov eax, 1
xor edx, edx
pop r12
ret
flat_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
.section .rodata
.S0: .string "TRIM"
.S1: .string "STLIMIT"
.S2: .string "T1"
.S3: .string "N"
.S4: .string "T2"
.S5: .string "OUTPUT"
.S6: .string "iterations: "
.text
