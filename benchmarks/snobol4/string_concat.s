  .intel_syntax noprefix
  .text
  .globl main
main:
  push rbp
  mov rbp, rsp
  call core_lib_init@PLT
  call rt_proc_reset@PLT
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
# IR_ASSIGN_CALL
 lea rdi, [rip + .S2]
 mov rsi, qword ptr [r12 + 0]
 mov rdx, qword ptr [r12 + 8]
 call rt_gvar_assign_descr@PLT
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
# IR_ASSIGN_LIT_S
 lea rdi, [rip + .S3]
 lea rsi, [rip + .S4]
 call rt_gvar_assign_str@PLT
 jmp snoch0_n8_α
 snoch0_n7_β:
 jmp snoch0_n8_α
snoch0_n8_α:
# IR_LIT_scalar
bb9_α:
 jmp snoch0_n9_α
 snoch0_n8_β:
 jmp snoch0_n10_α
snoch0_n9_α:
bb10_α:
# IR_ASSIGN_LIT_I
 lea rdi, [rip + .S5]
 movabs rsi, 0
 call rt_gvar_assign_int@PLT
 jmp snoch0_n10_α
 snoch0_n9_β:
 jmp snoch0_n10_α
snoch0_n10_α:
# IR_VAR
bb11_α:
 mov rdi, qword ptr [rip + .Lx14_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xgvarg12_done
 xgvarg12_β:
 jmp snoch0_n12_α
.Lx14_0:
 .quad .Lx14_0_s
.Lx14_0_s:
 .string "N"
xgvarg12_done:
# IR_LIT_I
bb12_α:
 mov qword ptr [r12 + 32], 6
 mov rax, qword ptr [rip + .Lx16_0]
 mov qword ptr [r12 + 40], rax
 jmp xgvarg15_done
 xgvarg15_β:
 jmp snoch0_n12_α
.Lx16_0:
 .quad 100000
xgvarg15_done:
bb13_α:
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
  .Lbynamefn18: .string "LT"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn18]
 lea rsi, [r12 + 64]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 cmp eax, 99
 je snoch0_n12_α
 jmp snoch0_n11_α
snoch0_n10_β:
 jmp snoch0_n12_α
snoch0_n11_α:
# IR_VAR
bb14_α:
 mov rdi, qword ptr [rip + .Lx20_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp snoch0_n13_α
 snoch0_n11_β:
 jmp snoch0_n12_α
.Lx20_0:
 .quad .Lx20_0_s
.Lx20_0_s:
 .string "N"
snoch0_n12_α:
bb15_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn22: .string "TIME"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn22]
 lea rsi, [r12 + 128]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je snoch0_n15_α
 jmp snoch0_n14_α
 snoch0_n12_β:
 jmp snoch0_n15_α
snoch0_n13_α:
# IR_LIT_scalar
bb16_α:
 jmp snoch0_n16_α
 snoch0_n13_β:
 jmp snoch0_n12_α
snoch0_n14_α:
bb17_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S6]
 mov rsi, qword ptr [r12 + 112]
 mov rdx, qword ptr [r12 + 120]
 call rt_gvar_assign_descr@PLT
 jmp snoch0_n15_α
 snoch0_n14_β:
 jmp snoch0_n15_α
snoch0_n15_α:
# IR_LIT_scalar
bb18_α:
 jmp snoch0_n17_α
 snoch0_n15_β:
 jmp snoch0_n18_α
snoch0_n16_α:
bb19_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S5]
 call rt_gvar_get_int@PLT
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 128], rax
 jmp snoch0_n19_α
 snoch0_n16_β:
 jmp snoch0_n12_α
snoch0_n17_α:
# IR_VAR
bb20_α:
 mov rdi, qword ptr [rip + .Lx29_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 136], rax
 mov qword ptr [r12 + 144], rdx
 jmp xgvarg27_done
 xgvarg27_β:
 jmp snoch0_n18_α
.Lx29_0:
 .quad .Lx29_0_s
.Lx29_0_s:
 .string "S"
xgvarg27_done:
bb21_α:
# BOX IR_CALL SIZE(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+136] -> [r12+168]
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 168], rax
 mov rax, qword ptr [r12 + 144]
 mov qword ptr [r12 + 176], rax
  .section .rodata
  .Lbynamefn31: .string "SIZE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn31]
 lea rsi, [r12 + 168]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 152], rax
 mov qword ptr [r12 + 160], rdx
 cmp eax, 99
 je snoch0_n18_α
 jmp snoch0_n20_α
snoch0_n17_β:
 jmp snoch0_n18_α
snoch0_n18_α:
# IR_LIT_scalar
bb22_α:
 jmp snoch0_n21_α
 snoch0_n18_β:
 jmp flat_γ
snoch0_n19_α:
bb23_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 48]
 mov rsi, qword ptr [r12 + 56]
 mov rdx, 6
 mov rcx, qword ptr [r12 + 128]
 call str_concat_d@PLT
 mov qword ptr [r12 + 184], rax
 mov qword ptr [r12 + 192], rdx
 jmp snoch0_n22_α
 snoch0_n19_β:
 jmp snoch0_n12_α
snoch0_n20_α:
# IR_LIT_S
bb24_α:
 mov qword ptr [r12 + 200], 1
 mov rax, qword ptr [rip + .Lx35_0]
 mov qword ptr [r12 + 208], rax
 jmp xgvcat34_0d
 xgvcat34_0b:
 jmp snoch0_n18_α
.Lx35_0:
 .quad .Lx35_0_s
.Lx35_0_s:
 .string "result: "
xgvcat34_0d:
bb25_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 200]
 mov rsi, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 152]
 mov rcx, qword ptr [r12 + 160]
 call str_concat_d@PLT
 mov qword ptr [r12 + 216], rax
 mov qword ptr [r12 + 224], rdx
 jmp snoch0_n23_α
 snoch0_n20_β:
 jmp snoch0_n18_α
snoch0_n21_α:
# IR_VAR
bb26_α:
 mov rdi, qword ptr [rip + .Lx38_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 232], rax
 mov qword ptr [r12 + 240], rdx
 jmp snoch0_n24_α
 snoch0_n21_β:
 jmp flat_γ
.Lx38_0:
 .quad .Lx38_0_s
.Lx38_0_s:
 .string "T2"
snoch0_n22_α:
bb27_α:
# IR_ASSIGN
 lea rdi, [rip + .S5]
 mov rsi, qword ptr [r12 + 184]
 mov rdx, qword ptr [r12 + 192]
 call rt_gvar_assign_descr@PLT
 jmp snoch0_n25_α
 snoch0_n22_β:
 jmp snoch0_n12_α
snoch0_n23_α:
bb28_α:
# IR_ASSIGN
 lea rdi, [rip + .S7]
 mov rsi, qword ptr [r12 + 216]
 mov rdx, qword ptr [r12 + 224]
 call rt_gvar_assign_descr@PLT
 jmp snoch0_n18_α
 snoch0_n23_β:
 jmp snoch0_n18_α
snoch0_n24_α:
# IR_VAR
bb29_α:
 mov rdi, qword ptr [rip + .Lx44_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 248], rax
 mov qword ptr [r12 + 256], rdx
 jmp snoch0_n26_α
 snoch0_n24_β:
 jmp flat_γ
.Lx44_0:
 .quad .Lx44_0_s
.Lx44_0_s:
 .string "T1"
snoch0_n25_α:
bb30_α:
# IR_ASSIGN_CONCAT 2 parts
 mov dword ptr [r12 + 264], 1
 lea rax, [rip + .S3]
 mov qword ptr [r12 + 272], rax
 mov dword ptr [r12 + 280], 0
 lea rax, [rip + .S8]
 mov qword ptr [r12 + 288], rax
 lea rdi, [rip + .S3]
 lea rsi, [r12 + 264]
 mov edx, 2
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_gvar_assign_concat_parts@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp snoch0_n10_α
 snoch0_n25_β:
 jmp snoch0_n10_α
snoch0_n26_α:
bb31_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S6]
 lea rsi, [rip + .S2]
 mov rdx, 1
 call rt_gvar_arith@PLT
 mov qword ptr [r12 + 296], rax
 jmp snoch0_n27_α
 snoch0_n26_β:
 jmp flat_γ
snoch0_n27_α:
# IR_LIT_S
bb32_α:
 mov qword ptr [r12 + 304], 1
 mov rax, qword ptr [rip + .Lx48_0]
 mov qword ptr [r12 + 312], rax
 jmp xgvcat47_0d
 xgvcat47_0b:
 jmp flat_γ
.Lx48_0:
 .quad .Lx48_0_s
.Lx48_0_s:
 .string "ms: "
xgvcat47_0d:
bb33_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 304]
 mov rsi, qword ptr [r12 + 312]
 mov rdx, 6
 mov rcx, qword ptr [r12 + 296]
 call str_concat_d@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp snoch0_n28_α
 snoch0_n27_β:
 jmp flat_γ
snoch0_n28_α:
bb34_α:
# IR_ASSIGN
 lea rdi, [rip + .S7]
 mov rsi, qword ptr [r12 + 320]
 mov rdx, qword ptr [r12 + 328]
 call rt_gvar_assign_descr@PLT
 jmp flat_γ
 snoch0_n28_β:
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
.S3: .string "S"
.S4: .string ""
.S5: .string "N"
.S6: .string "T2"
.S7: .string "OUTPUT"
.S8: .string "x"
.text
