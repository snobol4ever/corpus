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
 mov rdi, qword ptr [rip + .Lx11_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp snoch0_n9_α
 snoch0_n8_β:
 jmp snoch0_n10_α
.Lx11_0:
 .quad .Lx11_0_s
.Lx11_0_s:
 .string "N"
snoch0_n9_α:
# IR_LIT_scalar
bb10_α:
 jmp snoch0_n11_α
 snoch0_n9_β:
 jmp snoch0_n10_α
snoch0_n10_α:
# IR_VAR
bb11_α:
 mov rdi, qword ptr [rip + .Lx15_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 jmp xgvarg13_done
 xgvarg13_β:
 jmp snoch0_n13_α
.Lx15_0:
 .quad .Lx15_0_s
.Lx15_0_s:
 .string "N"
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
# BOX IR_CALL LT(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+32] -> [r12+80]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 88], rax
# marshal arg1 = producer-box slot [r12+48] -> [r12+96]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 104], rax
  .section .rodata
  .Lbynamefn19: .string "LT"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn19]
 lea rsi, [r12 + 80]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je snoch0_n13_α
 jmp snoch0_n12_α
snoch0_n10_β:
 jmp snoch0_n13_α
snoch0_n11_α:
bb14_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S3]
 call rt_gvar_get_int@PLT
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 112], rax
 jmp snoch0_n14_α
 snoch0_n11_β:
 jmp snoch0_n10_α
snoch0_n12_α:
# IR_VAR
bb15_α:
 mov rdi, qword ptr [rip + .Lx22_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 120], rax
 mov qword ptr [r12 + 128], rdx
 jmp snoch0_n15_α
 snoch0_n12_β:
 jmp snoch0_n13_α
.Lx22_0:
 .quad .Lx22_0_s
.Lx22_0_s:
 .string "N"
snoch0_n13_α:
bb16_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn24: .string "TIME"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn24]
 lea rsi, [r12 + 152]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 136], rax
 mov qword ptr [r12 + 144], rdx
 cmp eax, 99
 je snoch0_n17_α
 jmp snoch0_n16_α
 snoch0_n13_β:
 jmp snoch0_n17_α
snoch0_n14_α:
bb17_α:
# IR_ASSIGN
 lea rdi, [rip + .S3]
 mov rsi, qword ptr [r12 + 112]
 call rt_gvar_assign_int@PLT
 jmp snoch0_n10_α
 snoch0_n14_β:
 jmp snoch0_n10_α
snoch0_n15_α:
# IR_VAR
bb18_α:
 mov rdi, qword ptr [rip + .Lx30_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 152], rax
 mov qword ptr [r12 + 160], rdx
 jmp xgvarg28_done
 xgvarg28_β:
 jmp snoch0_n13_α
.Lx30_0:
 .quad .Lx30_0_s
.Lx30_0_s:
 .string "N"
xgvarg28_done:
# IR_LIT_I
bb19_α:
 mov qword ptr [r12 + 48], 6
 mov rax, qword ptr [rip + .Lx32_0]
 mov qword ptr [r12 + 56], rax
 jmp xgvarg31_done
 xgvarg31_β:
 jmp snoch0_n13_α
.Lx32_0:
 .quad 1000000
xgvarg31_done:
bb20_α:
# BOX IR_CALL LT(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+32] -> [r12+184]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 184], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 192], rax
# marshal arg1 = producer-box slot [r12+48] -> [r12+200]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 200], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 208], rax
  .section .rodata
  .Lbynamefn34: .string "LT"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn34]
 lea rsi, [r12 + 184]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 168], rax
 mov qword ptr [r12 + 176], rdx
 cmp eax, 99
 je snoch0_n13_α
 jmp xgvcat27_0d
xgvcat27_0b:
 jmp snoch0_n13_α
xgvcat27_0d:
# IR_VAR
bb21_α:
 mov rdi, qword ptr [rip + .Lx37_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 216], rax
 mov qword ptr [r12 + 224], rdx
 jmp xgvcat35_1d
 xgvcat35_1b:
 jmp snoch0_n13_α
.Lx37_0:
 .quad .Lx37_0_s
.Lx37_0_s:
 .string "N"
xgvcat35_1d:
bb22_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 64]
 mov rsi, qword ptr [r12 + 72]
 mov rdx, qword ptr [r12 + 120]
 mov rcx, qword ptr [r12 + 128]
 call str_concat_d@PLT
 mov qword ptr [r12 + 232], rax
 mov qword ptr [r12 + 240], rdx
 jmp snoch0_n18_α
 snoch0_n15_β:
 jmp snoch0_n13_α
snoch0_n16_α:
bb23_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S4]
 mov rsi, qword ptr [r12 + 136]
 mov rdx, qword ptr [r12 + 144]
 call rt_gvar_assign_descr@PLT
 jmp snoch0_n17_α
 snoch0_n16_β:
 jmp snoch0_n17_α
snoch0_n17_α:
bb24_α:
# IR_ASSIGN_CONCAT 2 parts
 mov dword ptr [r12 + 248], 0
 lea rax, [rip + .S6]
 mov qword ptr [r12 + 256], rax
 mov dword ptr [r12 + 264], 1
 lea rax, [rip + .S3]
 mov qword ptr [r12 + 272], rax
 lea rdi, [rip + .S5]
 lea rsi, [r12 + 248]
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
bb25_α:
# IR_ASSIGN
 lea rdi, [rip + .S3]
 mov rsi, qword ptr [r12 + 232]
 mov rdx, qword ptr [r12 + 240]
 call rt_gvar_assign_descr@PLT
 jmp snoch0_n8_α
 snoch0_n18_β:
 jmp snoch0_n13_α
snoch0_n19_α:
# IR_LIT_scalar
bb26_α:
 jmp snoch0_n20_α
 snoch0_n19_β:
 jmp flat_γ
snoch0_n20_α:
# IR_VAR
bb27_α:
 mov rdi, qword ptr [rip + .Lx45_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 280], rax
 mov qword ptr [r12 + 288], rdx
 jmp snoch0_n21_α
 snoch0_n20_β:
 jmp flat_γ
.Lx45_0:
 .quad .Lx45_0_s
.Lx45_0_s:
 .string "T2"
snoch0_n21_α:
# IR_VAR
bb28_α:
 mov rdi, qword ptr [rip + .Lx47_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 296], rax
 mov qword ptr [r12 + 304], rdx
 jmp snoch0_n22_α
 snoch0_n21_β:
 jmp flat_γ
.Lx47_0:
 .quad .Lx47_0_s
.Lx47_0_s:
 .string "T1"
snoch0_n22_α:
bb29_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S4]
 lea rsi, [rip + .S2]
 mov rdx, 1
 call rt_gvar_arith@PLT
 mov qword ptr [r12 + 312], rax
 jmp snoch0_n23_α
 snoch0_n22_β:
 jmp flat_γ
snoch0_n23_α:
# IR_LIT_S
bb30_α:
 mov qword ptr [r12 + 320], 1
 mov rax, qword ptr [rip + .Lx50_0]
 mov qword ptr [r12 + 328], rax
 jmp xgvcat49_0d
 xgvcat49_0b:
 jmp flat_γ
.Lx50_0:
 .quad .Lx50_0_s
.Lx50_0_s:
 .string "ms: "
xgvcat49_0d:
bb31_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S4]
 lea rsi, [rip + .S2]
 mov rdx, 1
 call rt_gvar_arith@PLT
 mov qword ptr [r12 + 336], rax
 jmp xgvcat51_1d
 xgvcat51_1b:
 jmp flat_γ
xgvcat51_1d:
bb32_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 320]
 mov rsi, qword ptr [r12 + 328]
 mov rdx, 6
 mov rcx, qword ptr [r12 + 312]
 call str_concat_d@PLT
 mov qword ptr [r12 + 344], rax
 mov qword ptr [r12 + 352], rdx
 jmp snoch0_n24_α
 snoch0_n23_β:
 jmp flat_γ
snoch0_n24_α:
bb33_α:
# IR_ASSIGN
 lea rdi, [rip + .S5]
 mov rsi, qword ptr [r12 + 344]
 mov rdx, qword ptr [r12 + 352]
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
