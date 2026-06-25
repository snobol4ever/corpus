  .intel_syntax noprefix
  .text
  .section .rodata
  .Lgvan0: .string "A"
  .Lgvan1: .string "B"
  .align 8
__gva_names:
  .quad .Lgvan0
  .quad .Lgvan1
  .section .bss
  .align 16
__gva: .space 32, 0
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
  mov edx, 2
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
# IR_ASSIGN_LIT_I
 lea rdi, [rip + .S0]
 movabs rsi, 10
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
# IR_ASSIGN_LIT_I
 lea rdi, [rip + .S1]
 movabs rsi, 3
 call rt_gvar_assign_int@PLT
 jmp snoch0_n4_α
 snoch0_n3_β:
 jmp snoch0_n4_α
snoch0_n4_α:
# IR_VAR gva
bb5_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp snoch0_n5_α
 snoch0_n4_β:
 jmp snoch0_n6_α
snoch0_n5_α:
# IR_VAR gva
bb6_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp snoch0_n7_α
 snoch0_n5_β:
 jmp snoch0_n6_α
snoch0_n6_α:
# IR_VAR gva
bb7_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 jmp snoch0_n8_α
 snoch0_n6_β:
 jmp snoch0_n9_α
snoch0_n7_α:
bb8_α:
# IR_BINOP_GVAR_ARITH
 mov rdx, qword ptr [rbx + 16]
 cmp edx, 6
 jne .Lx12_0
 mov rcx, qword ptr [rbx + 24]
 jmp .Lx12_1
.Lx12_0:
 lea rdi, [rip + .S1]
 call rt_gvar_get_int@PLT
 mov rcx, rax
.Lx12_1:
 mov qword ptr [r12 + 48], rcx
 mov rdx, qword ptr [rbx + 0]
 cmp edx, 6
 jne .Lx12_2
 mov rax, qword ptr [rbx + 8]
 jmp .Lx12_3
.Lx12_2:
 lea rdi, [rip + .S0]
 call rt_gvar_get_int@PLT
.Lx12_3:
 mov rcx, qword ptr [r12 + 48]
 add rax, rcx
 mov qword ptr [r12 + 48], rax
 jmp snoch0_n10_α
 snoch0_n7_β:
 jmp snoch0_n6_α
snoch0_n8_α:
# IR_VAR gva
bb9_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 56], rax
 mov qword ptr [r12 + 64], rdx
 jmp snoch0_n11_α
 snoch0_n8_β:
 jmp snoch0_n9_α
snoch0_n9_α:
# IR_VAR gva
bb10_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 72], rax
 mov qword ptr [r12 + 80], rdx
 jmp snoch0_n12_α
 snoch0_n9_β:
 jmp snoch0_n13_α
snoch0_n10_α:
bb11_α:
# IR_ASSIGN
 lea rdi, [rip + .S2]
 mov rsi, qword ptr [r12 + 48]
 call rt_gvar_assign_int@PLT
 jmp snoch0_n6_α
 snoch0_n10_β:
 jmp snoch0_n6_α
snoch0_n11_α:
bb12_α:
# IR_BINOP_GVAR_ARITH
 mov rdx, qword ptr [rbx + 16]
 cmp edx, 6
 jne .Lx20_0
 mov rcx, qword ptr [rbx + 24]
 jmp .Lx20_1
.Lx20_0:
 lea rdi, [rip + .S1]
 call rt_gvar_get_int@PLT
 mov rcx, rax
.Lx20_1:
 mov qword ptr [r12 + 88], rcx
 mov rdx, qword ptr [rbx + 0]
 cmp edx, 6
 jne .Lx20_2
 mov rax, qword ptr [rbx + 8]
 jmp .Lx20_3
.Lx20_2:
 lea rdi, [rip + .S0]
 call rt_gvar_get_int@PLT
.Lx20_3:
 mov rcx, qword ptr [r12 + 88]
 sub rax, rcx
 mov qword ptr [r12 + 88], rax
 jmp snoch0_n14_α
 snoch0_n11_β:
 jmp snoch0_n9_α
snoch0_n12_α:
# IR_VAR gva
bb13_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp snoch0_n15_α
 snoch0_n12_β:
 jmp snoch0_n13_α
snoch0_n13_α:
# IR_VAR gva
bb14_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp snoch0_n16_α
 snoch0_n13_β:
 jmp flat_γ
snoch0_n14_α:
bb15_α:
# IR_ASSIGN
 lea rdi, [rip + .S2]
 mov rsi, qword ptr [r12 + 88]
 call rt_gvar_assign_int@PLT
 jmp snoch0_n9_α
 snoch0_n14_β:
 jmp snoch0_n9_α
snoch0_n15_α:
bb16_α:
# IR_BINOP_GVAR_ARITH
 mov rdx, qword ptr [rbx + 16]
 cmp edx, 6
 jne .Lx28_0
 mov rcx, qword ptr [rbx + 24]
 jmp .Lx28_1
.Lx28_0:
 lea rdi, [rip + .S1]
 call rt_gvar_get_int@PLT
 mov rcx, rax
.Lx28_1:
 mov qword ptr [r12 + 128], rcx
 mov rdx, qword ptr [rbx + 0]
 cmp edx, 6
 jne .Lx28_2
 mov rax, qword ptr [rbx + 8]
 jmp .Lx28_3
.Lx28_2:
 lea rdi, [rip + .S0]
 call rt_gvar_get_int@PLT
.Lx28_3:
 mov rcx, qword ptr [r12 + 128]
 imul rax, rcx
 mov qword ptr [r12 + 128], rax
 jmp snoch0_n17_α
 snoch0_n15_β:
 jmp snoch0_n13_α
snoch0_n16_α:
# IR_VAR gva
bb17_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 136], rax
 mov qword ptr [r12 + 144], rdx
 jmp snoch0_n18_α
 snoch0_n16_β:
 jmp flat_γ
snoch0_n17_α:
bb18_α:
# IR_ASSIGN
 lea rdi, [rip + .S2]
 mov rsi, qword ptr [r12 + 128]
 call rt_gvar_assign_int@PLT
 jmp snoch0_n13_α
 snoch0_n17_β:
 jmp snoch0_n13_α
snoch0_n18_α:
bb19_α:
# IR_BINOP_GVAR_ARITH
 mov rdx, qword ptr [rbx + 16]
 cmp edx, 6
 jne .Lx34_0
 mov rcx, qword ptr [rbx + 24]
 jmp .Lx34_1
.Lx34_0:
 lea rdi, [rip + .S1]
 call rt_gvar_get_int@PLT
 mov rcx, rax
.Lx34_1:
 mov qword ptr [r12 + 152], rcx
 mov rdx, qword ptr [rbx + 0]
 cmp edx, 6
 jne .Lx34_2
 mov rax, qword ptr [rbx + 8]
 jmp .Lx34_3
.Lx34_2:
 lea rdi, [rip + .S0]
 call rt_gvar_get_int@PLT
.Lx34_3:
 mov rcx, qword ptr [r12 + 152]
 cqo
 idiv rcx
 mov qword ptr [r12 + 152], rax
 jmp snoch0_n19_α
 snoch0_n18_β:
 jmp flat_γ
snoch0_n19_α:
bb20_α:
# IR_ASSIGN
 lea rdi, [rip + .S2]
 mov rsi, qword ptr [r12 + 152]
 call rt_gvar_assign_int@PLT
 jmp flat_γ
 snoch0_n19_β:
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
.S0: .string "A"
.S1: .string "B"
.S2: .string "OUTPUT"
.text
