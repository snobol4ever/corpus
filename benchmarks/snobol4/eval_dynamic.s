  .intel_syntax noprefix
  .text
  .section .rodata
  .Lgvan0: .string "T1"
  .Lgvan1: .string "N"
  .Lgvan2: .string "EXPR"
  .Lgvan3: .string "R"
  .Lgvan4: .string "T2"
  .align 8
__gva_names:
  .quad .Lgvan0
  .quad .Lgvan1
  .quad .Lgvan2
  .quad .Lgvan3
  .quad .Lgvan4
  .section .bss
  .align 16
__gva: .space 80, 0
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
  mov edx, 5
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
 movabs rsi, 1000000000
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
 jmp xgvarg10_done
 xgvarg10_β:
 jmp snoch0_n10_α
xgvarg10_done:
# IR_LIT_I
bb10_α:
 mov qword ptr [r12 + 32], 6
 mov rax, qword ptr [rip + .Lx14_0]
 mov qword ptr [r12 + 40], rax
 jmp xgvarg13_done
 xgvarg13_β:
 jmp snoch0_n10_α
.Lx14_0:
 .quad 1000000
xgvarg13_done:
bb11_α:
# BOX IR_CALL LT(...) inline integer relop [four-port, FAIL->ω]
 mov rdx, qword ptr [rbx + 16]
 cmp edx, 6
 jne .Lx16_0
 mov rax, qword ptr [rbx + 24]
 jmp .Lx16_1
.Lx16_0:
   lea rdi, [rip + .S3]
 call rt_gvar_get_int@PLT
.Lx16_1:
 mov qword ptr [r12 + 64], rax
 mov rcx, 1000000
 mov qword ptr [r12 + 48], 0
 mov qword ptr [r12 + 56], 0
 mov rax, qword ptr [r12 + 64]
 cmp rax, rcx
 jge snoch0_n10_α
 jmp snoch0_n9_α
 snoch0_n8_β:
 jmp snoch0_n10_α
snoch0_n9_α:
# IR_VAR gva
bb12_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 jmp snoch0_n11_α
 snoch0_n9_β:
 jmp snoch0_n10_α
snoch0_n10_α:
bb13_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn20: .string "TIME"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn20]
 lea rsi, [r12 + 112]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je snoch0_n13_α
 jmp snoch0_n12_α
 snoch0_n10_β:
 jmp snoch0_n13_α
snoch0_n11_α:
# IR_LIT_scalar
bb14_α:
 jmp snoch0_n14_α
 snoch0_n11_β:
 jmp snoch0_n10_α
snoch0_n12_α:
bb15_α:
# IR_ASSIGN_CALL gva
 mov rax, qword ptr [r12 + 96]
 mov rcx, qword ptr [r12 + 104]
 mov qword ptr [rbx + 64], rax
 mov qword ptr [rbx + 72], rcx
 jmp snoch0_n13_α
 snoch0_n12_β:
 jmp snoch0_n13_α
snoch0_n13_α:
bb16_α:
# IR_ASSIGN_CONCAT 2 parts
 mov dword ptr [r12 + 112], 0
 lea rax, [rip + .S6]
 mov qword ptr [r12 + 120], rax
 mov dword ptr [r12 + 128], 1
 lea rax, [rip + .S7]
 mov qword ptr [r12 + 136], rax
 lea rdi, [rip + .S5]
 lea rsi, [r12 + 112]
 mov edx, 2
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_gvar_assign_concat_parts@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp snoch0_n15_α
 snoch0_n13_β:
 jmp snoch0_n15_α
snoch0_n14_α:
bb17_α:
# IR_BINOP_GVAR_ARITH
 mov rdx, qword ptr [rbx + 16]
 cmp edx, 6
 jne .Lx25_0
 mov rax, qword ptr [rbx + 24]
 jmp .Lx25_1
.Lx25_0:
 lea rdi, [rip + .S3]
 call rt_gvar_get_int@PLT
.Lx25_1:
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 144], rax
 jmp snoch0_n16_α
 snoch0_n14_β:
 jmp snoch0_n10_α
snoch0_n15_α:
# IR_LIT_scalar
bb18_α:
 jmp snoch0_n17_α
 snoch0_n15_β:
 jmp flat_γ
snoch0_n16_α:
bb19_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 48]
 mov rsi, qword ptr [r12 + 56]
 mov rdx, 6
 mov rcx, qword ptr [r12 + 152]
 call str_concat_d@PLT
 mov qword ptr [r12 + 152], rax
 mov qword ptr [r12 + 160], rdx
 jmp snoch0_n18_α
 snoch0_n16_β:
 jmp snoch0_n10_α
snoch0_n17_α:
# IR_VAR gva
bb20_α:
 mov rax, qword ptr [rbx + 64]
 mov rdx, qword ptr [rbx + 72]
 mov qword ptr [r12 + 168], rax
 mov qword ptr [r12 + 176], rdx
 jmp snoch0_n19_α
 snoch0_n17_β:
 jmp flat_γ
snoch0_n18_α:
bb21_α:
# IR_ASSIGN
 mov rax, qword ptr [r12 + 152]
 mov rcx, qword ptr [r12 + 160]
 mov qword ptr [rbx + 16], rax
 mov qword ptr [rbx + 24], rcx
 jmp snoch0_n20_α
 snoch0_n18_β:
 jmp snoch0_n10_α
snoch0_n19_α:
# IR_VAR gva
bb22_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 184], rax
 mov qword ptr [r12 + 192], rdx
 jmp snoch0_n21_α
 snoch0_n19_β:
 jmp flat_γ
snoch0_n20_α:
bb23_α:
# IR_ASSIGN_CONCAT 2 parts
 mov dword ptr [r12 + 200], 0
 lea rax, [rip + .S9]
 mov qword ptr [r12 + 208], rax
 mov dword ptr [r12 + 216], 1
 lea rax, [rip + .S3]
 mov qword ptr [r12 + 224], rax
 lea rdi, [rip + .S8]
 lea rsi, [r12 + 200]
 mov edx, 2
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_gvar_assign_concat_parts@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp snoch0_n22_α
 snoch0_n20_β:
 jmp snoch0_n22_α
snoch0_n21_α:
bb24_α:
# IR_BINOP_GVAR_ARITH
 mov rdx, qword ptr [rbx + 0]
 cmp edx, 6
 jne .Lx36_0
 mov rcx, qword ptr [rbx + 8]
 jmp .Lx36_1
.Lx36_0:
 lea rdi, [rip + .S2]
 call rt_gvar_get_int@PLT
 mov rcx, rax
.Lx36_1:
 mov qword ptr [r12 + 232], rcx
 mov rdx, qword ptr [rbx + 64]
 cmp edx, 6
 jne .Lx36_2
 mov rax, qword ptr [rbx + 72]
 jmp .Lx36_3
.Lx36_2:
 lea rdi, [rip + .S4]
 call rt_gvar_get_int@PLT
.Lx36_3:
 mov rcx, qword ptr [r12 + 232]
 sub rax, rcx
 mov qword ptr [r12 + 232], rax
 jmp snoch0_n23_α
 snoch0_n21_β:
 jmp flat_γ
snoch0_n22_α:
# IR_VAR gva
bb25_α:
 mov rax, qword ptr [rbx + 32]
 mov rdx, qword ptr [rbx + 40]
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp xgvarg37_done
 xgvarg37_β:
 jmp snoch0_n8_α
xgvarg37_done:
bb26_α:
# BOX IR_CALL EVAL(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+240] -> [r12+272]
 mov rax, qword ptr [r12 + 240]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 248]
 mov qword ptr [r12 + 280], rax
  .section .rodata
  .Lbynamefn41: .string "EVAL"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn41]
 lea rsi, [r12 + 272]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 cmp eax, 99
 je snoch0_n8_α
 jmp snoch0_n24_α
snoch0_n22_β:
 jmp snoch0_n8_α
snoch0_n23_α:
# IR_LIT_S
bb27_α:
 mov qword ptr [r12 + 288], 1
 mov rax, qword ptr [rip + .Lx43_0]
 mov qword ptr [r12 + 296], rax
 jmp xgvcat42_0d
 xgvcat42_0b:
 jmp flat_γ
.Lx43_0:
 .quad .Lx43_0_s
.Lx43_0_s:
 .string "ms: "
xgvcat42_0d:
bb28_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 288]
 mov rsi, qword ptr [r12 + 296]
 mov rdx, 6
 mov rcx, qword ptr [r12 + 240]
 call str_concat_d@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp snoch0_n25_α
 snoch0_n23_β:
 jmp flat_γ
snoch0_n24_α:
bb29_α:
# IR_ASSIGN_CALL gva
 mov rax, qword ptr [r12 + 256]
 mov rcx, qword ptr [r12 + 264]
 mov qword ptr [rbx + 48], rax
 mov qword ptr [rbx + 56], rcx
 jmp snoch0_n8_α
 snoch0_n24_β:
 jmp snoch0_n8_α
snoch0_n25_α:
bb30_α:
# IR_ASSIGN
 lea rdi, [rip + .S5]
 mov rsi, qword ptr [r12 + 304]
 mov rdx, qword ptr [r12 + 312]
 call rt_gvar_assign_descr@PLT
 jmp flat_γ
 snoch0_n25_β:
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
.S6: .string "result: "
.S7: .string "R"
.S8: .string "EXPR"
.S9: .string "N + "
.text
