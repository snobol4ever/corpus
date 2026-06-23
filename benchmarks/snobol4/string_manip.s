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
# IR_ASSIGN_LIT_I
 lea rdi, [rip + .S3]
 movabs rsi, 0
 call rt_gvar_assign_int@PLT
 jmp snoch0_n8_α
 snoch0_n7_β:
 jmp snoch0_n8_α
snoch0_n8_α:
# IR_VAR
bb9_α:
 mov rdi, qword ptr [rip + .Lx12_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xgvarg10_done
 xgvarg10_β:
 jmp snoch0_n10_α
.Lx12_0:
 .quad .Lx12_0_s
.Lx12_0_s:
 .string "ITER"
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
 .quad 5000000
xgvarg13_done:
bb11_α:
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
  .Lbynamefn16: .string "LT"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn16]
 lea rsi, [r12 + 64]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 cmp eax, 99
 je snoch0_n10_α
 jmp snoch0_n9_α
snoch0_n8_β:
 jmp snoch0_n10_α
snoch0_n9_α:
# IR_VAR
bb12_α:
 mov rdi, qword ptr [rip + .Lx18_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp snoch0_n11_α
 snoch0_n9_β:
 jmp snoch0_n10_α
.Lx18_0:
 .quad .Lx18_0_s
.Lx18_0_s:
 .string "ITER"
snoch0_n10_α:
bb13_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn20: .string "TIME"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn20]
 lea rsi, [r12 + 128]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
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
# IR_ASSIGN_CALL
 lea rdi, [rip + .S4]
 mov rsi, qword ptr [r12 + 112]
 mov rdx, qword ptr [r12 + 120]
 call rt_gvar_assign_descr@PLT
 jmp snoch0_n13_α
 snoch0_n12_β:
 jmp snoch0_n13_α
snoch0_n13_α:
bb16_α:
# IR_ASSIGN_CONCAT 2 parts
 mov dword ptr [r12 + 128], 0
 lea rax, [rip + .S6]
 mov qword ptr [r12 + 136], rax
 mov dword ptr [r12 + 144], 1
 lea rax, [rip + .S7]
 mov qword ptr [r12 + 152], rax
 lea rdi, [rip + .S5]
 lea rsi, [r12 + 128]
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
 lea rdi, [rip + .S3]
 call rt_gvar_get_int@PLT
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 160], rax
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
 mov rcx, qword ptr [r12 + 160]
 call str_concat_d@PLT
 mov qword ptr [r12 + 168], rax
 mov qword ptr [r12 + 176], rdx
 jmp snoch0_n18_α
 snoch0_n16_β:
 jmp snoch0_n10_α
snoch0_n17_α:
# IR_VAR
bb20_α:
 mov rdi, qword ptr [rip + .Lx28_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 184], rax
 mov qword ptr [r12 + 192], rdx
 jmp snoch0_n19_α
 snoch0_n17_β:
 jmp flat_γ
.Lx28_0:
 .quad .Lx28_0_s
.Lx28_0_s:
 .string "T2"
snoch0_n18_α:
bb21_α:
# IR_ASSIGN
 lea rdi, [rip + .S3]
 mov rsi, qword ptr [r12 + 168]
 mov rdx, qword ptr [r12 + 176]
 call rt_gvar_assign_descr@PLT
 jmp snoch0_n20_α
 snoch0_n18_β:
 jmp snoch0_n10_α
snoch0_n19_α:
# IR_VAR
bb22_α:
 mov rdi, qword ptr [rip + .Lx32_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 200], rax
 mov qword ptr [r12 + 208], rdx
 jmp snoch0_n21_α
 snoch0_n19_β:
 jmp flat_γ
.Lx32_0:
 .quad .Lx32_0_s
.Lx32_0_s:
 .string "T1"
snoch0_n20_α:
# IR_LIT_scalar
bb23_α:
 jmp snoch0_n22_α
 snoch0_n20_β:
 jmp snoch0_n23_α
snoch0_n21_α:
bb24_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S4]
 lea rsi, [rip + .S2]
 mov rdx, 1
 call rt_gvar_arith@PLT
 mov qword ptr [r12 + 216], rax
 jmp snoch0_n24_α
 snoch0_n21_β:
 jmp flat_γ
snoch0_n22_α:
bb25_α:
# IR_ASSIGN_LIT_S
 lea rdi, [rip + .S8]
 lea rsi, [rip + .S9]
 call rt_gvar_assign_str@PLT
 jmp snoch0_n23_α
 snoch0_n22_β:
 jmp snoch0_n23_α
snoch0_n23_α:
# IR_VAR
bb26_α:
 mov rdi, qword ptr [rip + .Lx38_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xgvarg36_done
 xgvarg36_β:
 jmp snoch0_n26_α
.Lx38_0:
 .quad .Lx38_0_s
.Lx38_0_s:
 .string "S"
xgvarg36_done:
# IR_LIT_S
bb27_α:
 mov qword ptr [r12 + 240], 1
 mov rax, qword ptr [rip + .Lx40_0]
 mov qword ptr [r12 + 248], rax
 jmp xgvarg39_done
 xgvarg39_β:
 jmp snoch0_n26_α
.Lx40_0:
 .quad .Lx40_0_s
.Lx40_0_s:
 .string "aeiou"
xgvarg39_done:
# IR_LIT_S
bb28_α:
 mov qword ptr [r12 + 256], 1
 mov rax, qword ptr [rip + .Lx42_0]
 mov qword ptr [r12 + 264], rax
 jmp xgvarg41_done
 xgvarg41_β:
 jmp snoch0_n26_α
.Lx42_0:
 .quad .Lx42_0_s
.Lx42_0_s:
 .string "*****"
xgvarg41_done:
bb29_α:
# BOX IR_CALL REPLACE(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+224] -> [r12+288]
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 296], rax
# marshal arg1 = producer-box slot [r12+240] -> [r12+304]
 mov rax, qword ptr [r12 + 240]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 248]
 mov qword ptr [r12 + 312], rax
# marshal arg2 = producer-box slot [r12+256] -> [r12+320]
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 328], rax
  .section .rodata
  .Lbynamefn44: .string "REPLACE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn44]
 lea rsi, [r12 + 288]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 cmp eax, 99
 je snoch0_n26_α
 jmp snoch0_n25_α
snoch0_n23_β:
 jmp snoch0_n26_α
snoch0_n24_α:
# IR_LIT_S
bb30_α:
 mov qword ptr [r12 + 336], 1
 mov rax, qword ptr [rip + .Lx46_0]
 mov qword ptr [r12 + 344], rax
 jmp xgvcat45_0d
 xgvcat45_0b:
 jmp flat_γ
.Lx46_0:
 .quad .Lx46_0_s
.Lx46_0_s:
 .string "ms: "
xgvcat45_0d:
bb31_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 336]
 mov rsi, qword ptr [r12 + 344]
 mov rdx, 6
 mov rcx, qword ptr [r12 + 216]
 call str_concat_d@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp snoch0_n27_α
 snoch0_n24_β:
 jmp flat_γ
snoch0_n25_α:
bb32_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S8]
 mov rsi, qword ptr [r12 + 272]
 mov rdx, qword ptr [r12 + 280]
 call rt_gvar_assign_descr@PLT
 jmp snoch0_n26_α
 snoch0_n25_β:
 jmp snoch0_n26_α
snoch0_n26_α:
# IR_VAR
bb33_α:
 mov rdi, qword ptr [rip + .Lx51_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 jmp xgvarg49_done
 xgvarg49_β:
 jmp snoch0_n8_α
.Lx51_0:
 .quad .Lx51_0_s
.Lx51_0_s:
 .string "S"
xgvarg49_done:
bb34_α:
# BOX IR_CALL SIZE(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+368] -> [r12+400]
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 376]
 mov qword ptr [r12 + 408], rax
  .section .rodata
  .Lbynamefn53: .string "SIZE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn53]
 lea rsi, [r12 + 400]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 cmp eax, 99
 je snoch0_n8_α
 jmp snoch0_n28_α
snoch0_n26_β:
 jmp snoch0_n8_α
snoch0_n27_α:
bb35_α:
# IR_ASSIGN
 lea rdi, [rip + .S5]
 mov rsi, qword ptr [r12 + 352]
 mov rdx, qword ptr [r12 + 360]
 call rt_gvar_assign_descr@PLT
 jmp flat_γ
 snoch0_n27_β:
 jmp flat_γ
snoch0_n28_α:
bb36_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S7]
 mov rsi, qword ptr [r12 + 384]
 mov rdx, qword ptr [r12 + 392]
 call rt_gvar_assign_descr@PLT
 jmp snoch0_n8_α
 snoch0_n28_β:
 jmp snoch0_n8_α
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
.S3: .string "ITER"
.S4: .string "T2"
.S5: .string "OUTPUT"
.S6: .string "result: "
.S7: .string "N"
.S8: .string "S"
.S9: .string "The quick brown fox jumps over the lazy dog"
.text
