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
# IR_VAR
bb6_α:
 mov rdi, qword ptr [rip + .Lx16_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp xgvarg14_done
 xgvarg14_β:
 jmp snoch0_n2_α
.Lx16_0:
 .quad .Lx16_0_s
.Lx16_0_s:
 .string "N"
xgvarg14_done:
# IR_LIT_I
bb7_α:
 mov qword ptr [r12 + 32], 6
 mov rax, qword ptr [rip + .Lx18_0]
 mov qword ptr [r12 + 40], rax
 jmp xgvarg17_done
 xgvarg17_β:
 jmp snoch0_n2_α
.Lx18_0:
 .quad 2
xgvarg17_done:
bb8_α:
# BOX IR_CALL LT(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+16] -> [r12+192]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 200], rax
# marshal arg1 = producer-box slot [r12+32] -> [r12+208]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 216], rax
  .section .rodata
  .Lbynamefn20: .string "LT"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn20]
 lea rsi, [r12 + 192]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 cmp eax, 99
 je snoch0_n2_α
 jmp xgvcat13_0d
xgvcat13_0b:
 jmp snoch0_n2_α
xgvcat13_0d:
# IR_VAR
bb9_α:
 mov rdi, qword ptr [rip + .Lx23_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xgvcat21_1d
 xgvcat21_1b:
 jmp snoch0_n2_α
.Lx23_0:
 .quad .Lx23_0_s
.Lx23_0_s:
 .string "N"
xgvcat21_1d:
bb10_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 48]
 mov rsi, qword ptr [r12 + 56]
 mov rdx, qword ptr [r12 + 96]
 mov rcx, qword ptr [r12 + 104]
 call str_concat_d@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp snoch0_n6_α
 snoch0_n3_β:
 jmp snoch0_n2_α
snoch0_n4_α:
xgvarg25_done:
bb11_α:
# BOX IR_CALL FIB(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = inline gvar-arith subexpr -> [r12+272]
   lea rdi, [rip + .S0]
 call rt_gvar_get_int@PLT
 mov qword ptr [r12 + 288], rax
 mov rcx, 2
 mov rax, qword ptr [r12 + 288]
 sub rax, rcx
 mov qword ptr [r12 + 272], 6
 mov qword ptr [r12 + 280], rax
  .section .rodata
  .Lprocfn27: .string "FIB"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn27]
 lea rsi, [r12 + 272]
 mov edx, 1
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
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
bb12_α:
# IR_ASSIGN
 lea rdi, [rip + .S1]
 mov rsi, qword ptr [r12 + 240]
 mov rdx, qword ptr [r12 + 248]
 call rt_gvar_assign_descr@PLT
 jmp snoch0_n5_α
 snoch0_n6_β:
 jmp snoch0_n2_α
snoch0_n7_α:
bb13_α:
# IR_BINOP_GVAR_ARITH (dynamic operands: DESCR-in DESCR-out via rt_num_arith)
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 mov rdx, qword ptr [r12 + 256]
 mov rcx, qword ptr [r12 + 264]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je snoch0_n5_α
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp snoch0_n8_α
 snoch0_n7_β:
 jmp snoch0_n5_α
snoch0_n8_α:
bb14_α:
# IR_ASSIGN
 lea rdi, [rip + .S1]
 mov rsi, qword ptr [r12 + 304]
 mov rdx, qword ptr [r12 + 312]
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
  mov esi, 320
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
snoch33_n0_α:
# IR_LIT_scalar
bb15_α:
 jmp snoch33_n1_α
 snoch33_n0_β:
 jmp snoch33_n2_α
snoch33_n1_α:
bb16_α:
# IR_ASSIGN
 lea rdi, [rip + .S2]
 movabs rsi, 1
 call rt_gvar_assign_int@PLT
 jmp snoch33_n2_α
 snoch33_n1_β:
 jmp snoch33_n2_α
snoch33_n2_α:
# IR_LIT_scalar
bb17_α:
 jmp snoch33_n3_α
 snoch33_n2_β:
 jmp snoch33_n4_α
snoch33_n3_α:
bb18_α:
# IR_ASSIGN
 lea rdi, [rip + .S3]
 movabs rsi, 1000000000
 call rt_gvar_assign_int@PLT
 jmp snoch33_n4_α
 snoch33_n3_β:
 jmp snoch33_n4_α
snoch33_n4_α:
bb19_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S4]
 call rt_proc_define@PLT
 jmp snoch33_n5_α
 snoch33_n4_β:
 jmp snoch33_n5_α
snoch33_n5_α:
bb20_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn40: .string "TIME"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn40]
 lea rsi, [r12 + 16]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 cmp eax, 99
 je snoch33_n7_α
 jmp snoch33_n6_α
 snoch33_n5_β:
 jmp snoch33_n7_α
snoch33_n6_α:
bb21_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S5]
 mov rsi, qword ptr [r12 + 0]
 mov rdx, qword ptr [r12 + 8]
 call rt_gvar_assign_descr@PLT
 jmp snoch33_n7_α
 snoch33_n6_β:
 jmp snoch33_n7_α
snoch33_n7_α:
# IR_LIT_I
bb22_α:
 mov qword ptr [r12 + 16], 6
 mov rax, qword ptr [rip + .Lx43_0]
 mov qword ptr [r12 + 24], rax
 jmp xgvarg42_done
 xgvarg42_β:
 jmp snoch33_n9_α
.Lx43_0:
 .quad 30
xgvarg42_done:
bb23_α:
# BOX IR_CALL FIB(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+16] -> [r12+48]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 56], rax
  .section .rodata
  .Lprocfn45: .string "FIB"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn45]
 lea rsi, [r12 + 48]
 mov edx, 1
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je snoch33_n9_α
 jmp snoch33_n8_α
snoch33_n7_β:
 jmp snoch33_n9_α
snoch33_n8_α:
bb24_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S6]
 mov rsi, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 call rt_gvar_assign_descr@PLT
 jmp snoch33_n9_α
 snoch33_n8_β:
 jmp snoch33_n9_α
snoch33_n9_α:
bb25_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn48: .string "TIME"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn48]
 lea rsi, [r12 + 80]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je snoch33_n11_α
 jmp snoch33_n10_α
 snoch33_n9_β:
 jmp snoch33_n11_α
snoch33_n10_α:
bb26_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S7]
 mov rsi, qword ptr [r12 + 64]
 mov rdx, qword ptr [r12 + 72]
 call rt_gvar_assign_descr@PLT
 jmp snoch33_n11_α
 snoch33_n10_β:
 jmp snoch33_n11_α
snoch33_n11_α:
bb27_α:
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
 jmp snoch33_n12_α
 snoch33_n11_β:
 jmp snoch33_n12_α
snoch33_n12_α:
# IR_LIT_scalar
bb28_α:
 jmp snoch33_n13_α
 snoch33_n12_β:
 jmp flat_γ
snoch33_n13_α:
# IR_VAR
bb29_α:
 mov rdi, qword ptr [rip + .Lx53_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp snoch33_n14_α
 snoch33_n13_β:
 jmp flat_γ
.Lx53_0:
 .quad .Lx53_0_s
.Lx53_0_s:
 .string "T2"
snoch33_n14_α:
# IR_VAR
bb30_α:
 mov rdi, qword ptr [rip + .Lx55_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp snoch33_n15_α
 snoch33_n14_β:
 jmp flat_γ
.Lx55_0:
 .quad .Lx55_0_s
.Lx55_0_s:
 .string "T1"
snoch33_n15_α:
bb31_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S7]
 lea rsi, [rip + .S5]
 mov rdx, 1
 call rt_gvar_arith@PLT
 mov qword ptr [r12 + 144], rax
 jmp snoch33_n16_α
 snoch33_n15_β:
 jmp flat_γ
snoch33_n16_α:
# IR_LIT_S
bb32_α:
 mov qword ptr [r12 + 152], 1
 mov rax, qword ptr [rip + .Lx58_0]
 mov qword ptr [r12 + 160], rax
 jmp xgvcat57_0d
 xgvcat57_0b:
 jmp flat_γ
.Lx58_0:
 .quad .Lx58_0_s
.Lx58_0_s:
 .string "ms: "
xgvcat57_0d:
bb33_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S7]
 lea rsi, [rip + .S5]
 mov rdx, 1
 call rt_gvar_arith@PLT
 mov qword ptr [r12 + 168], rax
 jmp xgvcat59_1d
 xgvcat59_1b:
 jmp flat_γ
xgvcat59_1d:
bb34_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 152]
 mov rsi, qword ptr [r12 + 160]
 mov rdx, 6
 mov rcx, qword ptr [r12 + 144]
 call str_concat_d@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp snoch33_n17_α
 snoch33_n16_β:
 jmp flat_γ
snoch33_n17_α:
bb35_α:
# IR_ASSIGN
 lea rdi, [rip + .S8]
 mov rsi, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 call rt_gvar_assign_descr@PLT
 jmp flat_γ
 snoch33_n17_β:
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
