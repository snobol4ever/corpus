  .intel_syntax noprefix
  .text
FIB_α:
#=======================================================================================================================
    .global FIB_α
    .global FIB_β
    .global FIB_γ
    .global FIB_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
FIB_α_body:
snoch0_n0_α:
# IR_VAR
bb1_α:
 mov rdi, qword ptr [rip + .Lx3_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xgvarg1_done
 xgvarg1_β:
 jmp snoch0_n2_α
.Lx3_0:
 .quad .Lx3_0_s
.Lx3_0_s:
 .string "N"
xgvarg1_done:
# IR_LIT_I
bb2_α:
 mov qword ptr [r12 + 32], 6
 mov rax, qword ptr [rip + .Lx5_0]
 mov qword ptr [r12 + 40], rax
 jmp xgvarg4_done
 xgvarg4_β:
 jmp snoch0_n2_α
.Lx5_0:
 .quad 2
xgvarg4_done:
bb3_α:
# BOX IR_CALL LT(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+16] -> [r12+64]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 64], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 72], rax
# marshal arg1 = producer-box slot [r12+32] -> [r12+80]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 88], rax
  .section .rodata
  .Lbynamefn7: .string "LT"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn7]
 lea rsi, [r12 + 64]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 cmp eax, 99
 je snoch0_n2_α
 jmp snoch0_n1_α
snoch0_n0_β:
 jmp snoch0_n2_α
snoch0_n1_α:
# IR_VAR
bb4_α:
 mov rdi, qword ptr [rip + .Lx9_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp snoch0_n3_α
 snoch0_n1_β:
 jmp snoch0_n2_α
.Lx9_0:
 .quad .Lx9_0_s
.Lx9_0_s:
 .string "N"
snoch0_n2_α:
xgvarg10_done:
bb5_α:
# BOX IR_CALL FIB(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = inline gvar-arith subexpr -> [r12+128]
   lea rdi, [rip + .S0]
 call rt_gvar_get_int@PLT
 mov qword ptr [r12 + 144], rax
 mov rcx, 1
 mov rax, qword ptr [r12 + 144]
 sub rax, rcx
 mov qword ptr [r12 + 128], 6
 mov qword ptr [r12 + 136], rax
  .section .rodata
  .Lprocfn12: .string "FIB"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn12]
 lea rsi, [r12 + 128]
 mov edx, 1
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je snoch0_n5_α
 jmp snoch0_n4_α
snoch0_n2_β:
 jmp snoch0_n5_α
snoch0_n3_α:
bb6_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 48]
 mov rsi, qword ptr [r12 + 56]
 mov rdx, qword ptr [r12 + 96]
 mov rcx, qword ptr [r12 + 104]
 call str_concat_d@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp snoch0_n6_α
 snoch0_n3_β:
 jmp snoch0_n2_α
snoch0_n4_α:
xgvarg14_done:
bb7_α:
# BOX IR_CALL FIB(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = inline gvar-arith subexpr -> [r12+192]
   lea rdi, [rip + .S0]
 call rt_gvar_get_int@PLT
 mov qword ptr [r12 + 208], rax
 mov rcx, 2
 mov rax, qword ptr [r12 + 208]
 sub rax, rcx
 mov qword ptr [r12 + 192], 6
 mov qword ptr [r12 + 200], rax
  .section .rodata
  .Lprocfn16: .string "FIB"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn16]
 lea rsi, [r12 + 192]
 mov edx, 1
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 cmp eax, 99
 je snoch0_n5_α
 jmp snoch0_n7_α
snoch0_n4_β:
 jmp snoch0_n5_α
snoch0_n5_α:
snoch0_n5_β:
jmp FIB_γ
jmp FIB_γ
snoch0_n6_α:
bb8_α:
# IR_ASSIGN
 lea rdi, [rip + .S1]
 mov rsi, qword ptr [r12 + 160]
 mov rdx, qword ptr [r12 + 168]
 call rt_gvar_assign_descr@PLT
 jmp snoch0_n5_α
 snoch0_n6_β:
 jmp snoch0_n2_α
snoch0_n7_α:
bb9_α:
# IR_BINOP_GVAR_ARITH (dynamic operands: DESCR-in DESCR-out via rt_num_arith)
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 mov rdx, qword ptr [r12 + 176]
 mov rcx, qword ptr [r12 + 184]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je snoch0_n5_α
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp snoch0_n8_α
 snoch0_n7_β:
 jmp snoch0_n5_α
snoch0_n8_α:
bb10_α:
# IR_ASSIGN
 lea rdi, [rip + .S1]
 mov rsi, qword ptr [r12 + 224]
 mov rdx, qword ptr [r12 + 232]
 call rt_gvar_assign_descr@PLT
 jmp snoch0_n5_α
 snoch0_n8_β:
 jmp snoch0_n5_α
FIB_β:
jmp FIB_ω
FIB_γ:
mov eax, 1
xor edx, edx
pop r12
ret
FIB_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .section .rodata
  .Lpn0: .string "FIB"
  .Lpp0_0: .string "N"
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
  lea rsi, [rip + FIB_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lpn0]
  mov esi, 240
  call rt_proc_set_frame_bytes@PLT
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
snoch22_n0_α:
# IR_LIT_scalar
bb11_α:
 jmp snoch22_n1_α
 snoch22_n0_β:
 jmp snoch22_n2_α
snoch22_n1_α:
bb12_α:
# IR_ASSIGN
 lea rdi, [rip + .S2]
 movabs rsi, 1
 call rt_gvar_assign_int@PLT
 jmp snoch22_n2_α
 snoch22_n1_β:
 jmp snoch22_n2_α
snoch22_n2_α:
# IR_LIT_scalar
bb13_α:
 jmp snoch22_n3_α
 snoch22_n2_β:
 jmp snoch22_n4_α
snoch22_n3_α:
bb14_α:
# IR_ASSIGN
 lea rdi, [rip + .S3]
 movabs rsi, 1000000000
 call rt_gvar_assign_int@PLT
 jmp snoch22_n4_α
 snoch22_n3_β:
 jmp snoch22_n4_α
snoch22_n4_α:
bb15_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S4]
 call rt_proc_define@PLT
 jmp snoch22_n5_α
 snoch22_n4_β:
 jmp snoch22_n5_α
snoch22_n5_α:
bb16_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn29: .string "TIME"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn29]
 lea rsi, [r12 + 16]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 cmp eax, 99
 je snoch22_n7_α
 jmp snoch22_n6_α
 snoch22_n5_β:
 jmp snoch22_n7_α
snoch22_n6_α:
bb17_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S5]
 mov rsi, qword ptr [r12 + 0]
 mov rdx, qword ptr [r12 + 8]
 call rt_gvar_assign_descr@PLT
 jmp snoch22_n7_α
 snoch22_n6_β:
 jmp snoch22_n7_α
snoch22_n7_α:
# IR_LIT_I
bb18_α:
 mov qword ptr [r12 + 16], 6
 mov rax, qword ptr [rip + .Lx32_0]
 mov qword ptr [r12 + 24], rax
 jmp xgvarg31_done
 xgvarg31_β:
 jmp snoch22_n9_α
.Lx32_0:
 .quad 30
xgvarg31_done:
bb19_α:
# BOX IR_CALL FIB(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+16] -> [r12+48]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 56], rax
  .section .rodata
  .Lprocfn34: .string "FIB"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn34]
 lea rsi, [r12 + 48]
 mov edx, 1
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je snoch22_n9_α
 jmp snoch22_n8_α
snoch22_n7_β:
 jmp snoch22_n9_α
snoch22_n8_α:
bb20_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S6]
 mov rsi, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 call rt_gvar_assign_descr@PLT
 jmp snoch22_n9_α
 snoch22_n8_β:
 jmp snoch22_n9_α
snoch22_n9_α:
bb21_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn37: .string "TIME"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn37]
 lea rsi, [r12 + 80]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je snoch22_n11_α
 jmp snoch22_n10_α
 snoch22_n9_β:
 jmp snoch22_n11_α
snoch22_n10_α:
bb22_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S7]
 mov rsi, qword ptr [r12 + 64]
 mov rdx, qword ptr [r12 + 72]
 call rt_gvar_assign_descr@PLT
 jmp snoch22_n11_α
 snoch22_n10_β:
 jmp snoch22_n11_α
snoch22_n11_α:
bb23_α:
# IR_ASSIGN_CONCAT 2 parts
 mov dword ptr [r12 + 80], 0
 lea rax, [rip + .S9]
 mov qword ptr [r12 + 88], rax
 mov dword ptr [r12 + 96], 1
 lea rax, [rip + .S6]
 mov qword ptr [r12 + 104], rax
 lea rdi, [rip + .S8]
 lea rsi, [r12 + 80]
 mov edx, 2
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_gvar_assign_concat_parts@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp snoch22_n12_α
 snoch22_n11_β:
 jmp snoch22_n12_α
snoch22_n12_α:
# IR_LIT_scalar
bb24_α:
 jmp snoch22_n13_α
 snoch22_n12_β:
 jmp flat_γ
snoch22_n13_α:
# IR_VAR
bb25_α:
 mov rdi, qword ptr [rip + .Lx42_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp snoch22_n14_α
 snoch22_n13_β:
 jmp flat_γ
.Lx42_0:
 .quad .Lx42_0_s
.Lx42_0_s:
 .string "T2"
snoch22_n14_α:
# IR_VAR
bb26_α:
 mov rdi, qword ptr [rip + .Lx44_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp snoch22_n15_α
 snoch22_n14_β:
 jmp flat_γ
.Lx44_0:
 .quad .Lx44_0_s
.Lx44_0_s:
 .string "T1"
snoch22_n15_α:
bb27_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S7]
 lea rsi, [rip + .S5]
 mov rdx, 1
 call rt_gvar_arith@PLT
 mov qword ptr [r12 + 144], rax
 jmp snoch22_n16_α
 snoch22_n15_β:
 jmp flat_γ
snoch22_n16_α:
# IR_LIT_S
bb28_α:
 mov qword ptr [r12 + 152], 1
 mov rax, qword ptr [rip + .Lx47_0]
 mov qword ptr [r12 + 160], rax
 jmp xgvcat46_0d
 xgvcat46_0b:
 jmp flat_γ
.Lx47_0:
 .quad .Lx47_0_s
.Lx47_0_s:
 .string "ms: "
xgvcat46_0d:
bb29_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 152]
 mov rsi, qword ptr [r12 + 160]
 mov rdx, 6
 mov rcx, qword ptr [r12 + 144]
 call str_concat_d@PLT
 mov qword ptr [r12 + 168], rax
 mov qword ptr [r12 + 176], rdx
 jmp snoch22_n17_α
 snoch22_n16_β:
 jmp flat_γ
snoch22_n17_α:
bb30_α:
# IR_ASSIGN
 lea rdi, [rip + .S8]
 mov rsi, qword ptr [r12 + 168]
 mov rdx, qword ptr [r12 + 176]
 call rt_gvar_assign_descr@PLT
 jmp flat_γ
 snoch22_n17_β:
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
.S0: .string "N"
.S1: .string "FIB"
.S2: .string "TRIM"
.S3: .string "STLIMIT"
.S4: .string "FIB(N)"
.S5: .string "T1"
.S6: .string "R"
.S7: .string "T2"
.S8: .string "OUTPUT"
.S9: .string "result: "
.text
