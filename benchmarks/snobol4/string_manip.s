  .intel_syntax noprefix
  .text
  .section .rodata
  .Lgvan0: .string "T1"
  .Lgvan1: .string "ITER"
  .Lgvan2: .string "S"
  .Lgvan3: .string "N"
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
 .quad 5000000
xgvarg13_done:
bb11_α:
# BOX IR_CALL LT(...) inline integer relop [four-port, FAIL->ω]
   lea rdi, [rip + .S3]
 call rt_gvar_get_int@PLT
 mov qword ptr [r12 + 64], rax
 mov rcx, 5000000
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
  .Lrkfn19: .string "TIME"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn19]
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
 mov rax, qword ptr [rbx + 24]
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
 mov rcx, qword ptr [r12 + 144]
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
# IR_LIT_scalar
bb23_α:
 jmp snoch0_n22_α
 snoch0_n20_β:
 jmp snoch0_n23_α
snoch0_n21_α:
bb24_α:
# IR_BINOP_GVAR_ARITH
 mov rax, qword ptr [rbx + 72]
 mov rcx, qword ptr [rbx + 8]
 sub rax, rcx
 mov qword ptr [r12 + 200], rax
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
# IR_VAR gva
bb26_α:
 mov rax, qword ptr [rbx + 32]
 mov rdx, qword ptr [rbx + 40]
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xgvarg35_done
 xgvarg35_β:
 jmp snoch0_n26_α
xgvarg35_done:
# IR_LIT_S
bb27_α:
 mov qword ptr [r12 + 224], 1
 mov rax, qword ptr [rip + .Lx39_0]
 mov qword ptr [r12 + 232], rax
 jmp xgvarg38_done
 xgvarg38_β:
 jmp snoch0_n26_α
.Lx39_0:
 .quad .Lx39_0_s
.Lx39_0_s:
 .string "aeiou"
xgvarg38_done:
# IR_LIT_S
bb28_α:
 mov qword ptr [r12 + 240], 1
 mov rax, qword ptr [rip + .Lx41_0]
 mov qword ptr [r12 + 248], rax
 jmp xgvarg40_done
 xgvarg40_β:
 jmp snoch0_n26_α
.Lx41_0:
 .quad .Lx41_0_s
.Lx41_0_s:
 .string "*****"
xgvarg40_done:
bb29_α:
# BOX IR_CALL REPLACE(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+208] -> [r12+272]
 mov rax, qword ptr [r12 + 208]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 216]
 mov qword ptr [r12 + 280], rax
# marshal arg1 = producer-box slot [r12+224] -> [r12+288]
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 296], rax
# marshal arg2 = producer-box slot [r12+240] -> [r12+304]
 mov rax, qword ptr [r12 + 240]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 248]
 mov qword ptr [r12 + 312], rax
  .section .rodata
  .Lbynamefn43: .string "REPLACE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn43]
 lea rsi, [r12 + 272]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 cmp eax, 99
 je snoch0_n26_α
 jmp snoch0_n25_α
snoch0_n23_β:
 jmp snoch0_n26_α
snoch0_n24_α:
# IR_LIT_S
bb30_α:
 mov qword ptr [r12 + 320], 1
 mov rax, qword ptr [rip + .Lx45_0]
 mov qword ptr [r12 + 328], rax
 jmp xgvcat44_0d
 xgvcat44_0b:
 jmp flat_γ
.Lx45_0:
 .quad .Lx45_0_s
.Lx45_0_s:
 .string "ms: "
xgvcat44_0d:
bb31_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 320]
 mov rsi, qword ptr [r12 + 328]
 mov rdx, 6
 mov rcx, qword ptr [r12 + 200]
 call str_concat_d@PLT
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp snoch0_n27_α
 snoch0_n24_β:
 jmp flat_γ
snoch0_n25_α:
bb32_α:
# IR_ASSIGN_CALL gva
 mov rax, qword ptr [r12 + 256]
 mov rcx, qword ptr [r12 + 264]
 mov qword ptr [rbx + 32], rax
 mov qword ptr [rbx + 40], rcx
 jmp snoch0_n26_α
 snoch0_n25_β:
 jmp snoch0_n26_α
snoch0_n26_α:
# IR_VAR gva
bb33_α:
 mov rax, qword ptr [rbx + 32]
 mov rdx, qword ptr [rbx + 40]
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xgvarg48_done
 xgvarg48_β:
 jmp snoch0_n8_α
xgvarg48_done:
bb34_α:
# BOX IR_CALL SIZE(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+352] -> [r12+384]
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 384], rax
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 392], rax
  .section .rodata
  .Lbynamefn52: .string "SIZE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn52]
 lea rsi, [r12 + 384]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 cmp eax, 99
 je snoch0_n8_α
 jmp snoch0_n28_α
snoch0_n26_β:
 jmp snoch0_n8_α
snoch0_n27_α:
bb35_α:
# IR_ASSIGN
 lea rdi, [rip + .S5]
 mov rsi, qword ptr [r12 + 336]
 mov rdx, qword ptr [r12 + 344]
 call rt_gvar_assign_descr@PLT
 jmp flat_γ
 snoch0_n27_β:
 jmp flat_γ
snoch0_n28_α:
bb36_α:
# IR_ASSIGN_CALL gva
 mov rax, qword ptr [r12 + 368]
 mov rcx, qword ptr [r12 + 376]
 mov qword ptr [rbx + 48], rax
 mov qword ptr [rbx + 56], rcx
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
