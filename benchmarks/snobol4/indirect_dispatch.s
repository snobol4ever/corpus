  .intel_syntax noprefix
  .text
ADD1_α:
#=======================================================================================================================
    .global ADD1_α
    .global ADD1_β
    .global ADD1_γ
    .global ADD1_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
ADD1_α_body:
snoch0_n0_α:
# IR_VAR
bb1_α:
 mov rdi, qword ptr [rip + .Lx2_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp snoch0_n1_α
 snoch0_n0_β:
 jmp snoch0_n2_α
.Lx2_0:
 .quad .Lx2_0_s
.Lx2_0_s:
 .string "V"
snoch0_n1_α:
# IR_LIT_scalar
bb2_α:
 jmp snoch0_n3_α
 snoch0_n1_β:
 jmp snoch0_n2_α
snoch0_n2_α:
snoch0_n2_β:
jmp ADD1_γ
jmp ADD1_γ
snoch0_n3_α:
bb3_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S0]
 call rt_gvar_get_int@PLT
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 16], rax
 jmp snoch0_n4_α
 snoch0_n3_β:
 jmp snoch0_n2_α
snoch0_n4_α:
bb4_α:
# IR_ASSIGN
 lea rdi, [rip + .S1]
 mov rsi, qword ptr [r12 + 16]
 call rt_gvar_assign_int@PLT
 jmp snoch0_n2_α
 snoch0_n4_β:
 jmp snoch0_n2_α
ADD1_β:
jmp ADD1_ω
ADD1_γ:
mov eax, 1
xor edx, edx
pop r12
ret
ADD1_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .section .rodata
  .Lpn0: .string "ADD1"
  .Lpp0_0: .string "V"
  .Lpnames0:
  .quad .Lpp0_0
  .quad 0
  .section .text
  .intel_syntax noprefix
proc_startup:
  push rbp
  mov rbp, rsp
  call core_lib_init@PLT
  call rt_proc_reset@PLT
  lea rdi, [rip + .Lpn0]
  lea rsi, [rip + .Lpnames0]
  mov edx, 1
  call rt_proc_register@PLT
  lea rdi, [rip + .Lpn0]
  lea rsi, [rip + ADD1_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lpn0]
  mov esi, 24
  call rt_proc_set_frame_bytes@PLT
  pop rbp
  ret
  .section .rodata
  .Lgvan0: .string "ADD1"
  .Lgvan1: .string "V"
  .Lgvan2: .string "FN"
  .Lgvan3: .string "X"
  .Lgvan4: .string "N"
  .Lgvan5: .string "R"
  .align 8
__gva_names:
  .quad .Lgvan0
  .quad .Lgvan1
  .quad .Lgvan2
  .quad .Lgvan3
  .quad .Lgvan4
  .quad .Lgvan5
  .section .bss
  .align 16
__gva: .space 96, 0
  .section .text
  .intel_syntax noprefix
  .globl main
main:
  push rbp
  mov rbp, rsp
  call proc_startup
  lea rdi, [rip + __gva_names]
  lea rsi, [rip + __gva]
  mov edx, 6
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
snoch8_n0_α:
# IR_LIT_scalar
bb5_α:
 jmp snoch8_n1_α
 snoch8_n0_β:
 jmp snoch8_n2_α
snoch8_n1_α:
bb6_α:
# IR_ASSIGN
 lea rdi, [rip + .S2]
 movabs rsi, 1
 call rt_gvar_assign_int@PLT
 jmp snoch8_n2_α
 snoch8_n1_β:
 jmp snoch8_n2_α
snoch8_n2_α:
bb7_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S3]
 call rt_proc_define@PLT
 jmp snoch8_n3_α
 snoch8_n2_β:
 jmp snoch8_n3_α
snoch8_n3_α:
# IR_LIT_scalar
bb8_α:
 jmp snoch8_n4_α
 snoch8_n3_β:
 jmp snoch8_n5_α
snoch8_n4_α:
bb9_α:
# IR_ASSIGN_LIT_S
 lea rdi, [rip + .S4]
 lea rsi, [rip + .S1]
 call rt_gvar_assign_str@PLT
 jmp snoch8_n5_α
 snoch8_n4_β:
 jmp snoch8_n5_α
snoch8_n5_α:
# IR_LIT_scalar
bb10_α:
 jmp snoch8_n6_α
 snoch8_n5_β:
 jmp snoch8_n7_α
snoch8_n6_α:
bb11_α:
# IR_ASSIGN_LIT_I
 lea rdi, [rip + .S5]
 movabs rsi, 5
 call rt_gvar_assign_int@PLT
 jmp snoch8_n7_α
 snoch8_n6_β:
 jmp snoch8_n7_α
snoch8_n7_α:
# IR_LIT_scalar
bb12_α:
 jmp snoch8_n8_α
 snoch8_n7_β:
 jmp snoch8_n9_α
snoch8_n8_α:
bb13_α:
# IR_ASSIGN_LIT_I
 lea rdi, [rip + .S6]
 movabs rsi, 0
 call rt_gvar_assign_int@PLT
 jmp snoch8_n9_α
 snoch8_n8_β:
 jmp snoch8_n9_α
snoch8_n9_α:
# IR_VAR gva
bb14_α:
 mov rax, qword ptr [rbx + 64]
 mov rdx, qword ptr [rbx + 72]
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xgvarg18_done
 xgvarg18_β:
 jmp snoch8_n11_α
xgvarg18_done:
# IR_LIT_I
bb15_α:
 mov qword ptr [r12 + 32], 6
 mov rax, qword ptr [rip + .Lx22_0]
 mov qword ptr [r12 + 40], rax
 jmp xgvarg21_done
 xgvarg21_β:
 jmp snoch8_n11_α
.Lx22_0:
 .quad 500
xgvarg21_done:
bb16_α:
# BOX IR_CALL LT(...) inline integer relop [four-port, FAIL->ω]
 mov rdx, qword ptr [rbx + 64]
 cmp edx, 6
 jne .Lx24_0
 mov rax, qword ptr [rbx + 72]
 jmp .Lx24_1
.Lx24_0:
   lea rdi, [rip + .S6]
 call rt_gvar_get_int@PLT
.Lx24_1:
 mov qword ptr [r12 + 64], rax
 mov rcx, 500
 mov qword ptr [r12 + 48], 0
 mov qword ptr [r12 + 56], 0
 mov rax, qword ptr [r12 + 64]
 cmp rax, rcx
 jge snoch8_n11_α
 jmp snoch8_n10_α
 snoch8_n9_β:
 jmp snoch8_n11_α
snoch8_n10_α:
# IR_VAR gva
bb17_α:
 mov rax, qword ptr [rbx + 64]
 mov rdx, qword ptr [rbx + 72]
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 jmp snoch8_n12_α
 snoch8_n10_β:
 jmp snoch8_n11_α
snoch8_n11_α:
# IR_VAR gva
bb18_α:
 mov rax, qword ptr [rbx + 80]
 mov rdx, qword ptr [rbx + 88]
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp snoch8_n13_α
 snoch8_n11_β:
 jmp flat_γ
snoch8_n12_α:
# IR_LIT_scalar
bb19_α:
 jmp snoch8_n14_α
 snoch8_n12_β:
 jmp snoch8_n11_α
snoch8_n13_α:
bb20_α:
# IR_ASSIGN_VAR
 lea rdi, [rip + .S7]
 lea rsi, [rip + .S8]
 call rt_gvar_assign_var@PLT
 jmp flat_γ
 snoch8_n13_β:
 jmp flat_γ
snoch8_n14_α:
bb21_α:
# IR_BINOP_GVAR_ARITH
 mov rdx, qword ptr [rbx + 64]
 cmp edx, 6
 jne .Lx32_0
 mov rax, qword ptr [rbx + 72]
 jmp .Lx32_1
.Lx32_0:
 lea rdi, [rip + .S6]
 call rt_gvar_get_int@PLT
.Lx32_1:
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 112], rax
 jmp snoch8_n15_α
 snoch8_n14_β:
 jmp snoch8_n11_α
snoch8_n15_α:
bb22_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 48]
 mov rsi, qword ptr [r12 + 56]
 mov rdx, 6
 mov rcx, qword ptr [r12 + 112]
 call str_concat_d@PLT
 mov qword ptr [r12 + 120], rax
 mov qword ptr [r12 + 128], rdx
 jmp snoch8_n16_α
 snoch8_n15_β:
 jmp snoch8_n11_α
snoch8_n16_α:
bb23_α:
# IR_ASSIGN
 mov rax, qword ptr [r12 + 120]
 mov rcx, qword ptr [r12 + 128]
 mov qword ptr [rbx + 64], rax
 mov qword ptr [rbx + 72], rcx
 jmp snoch8_n9_α
 snoch8_n16_β:
 jmp snoch8_n11_α
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
.S0: .string "V"
.S1: .string "ADD1"
.S2: .string "TRIM"
.S3: .string "ADD1(V)"
.S4: .string "FN"
.S5: .string "X"
.S6: .string "N"
.S7: .string "OUTPUT"
.S8: .string "R"
.text
