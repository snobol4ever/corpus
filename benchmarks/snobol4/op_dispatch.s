  .intel_syntax noprefix
  .text
  .section .rodata
  .Lgvan0: .string "T1"
  .Lgvan1: .string "N"
  .Lgvan2: .string "OUTER"
  .Lgvan3: .string "T2"
  .align 8
__gva_names:
  .quad .Lgvan0
  .quad .Lgvan1
  .quad .Lgvan2
  .quad .Lgvan3
  .section .bss
  .align 16
__gva: .space 64, 0
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
  mov edx, 4
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
 movabs rsi, 1
 call rt_gvar_assign_int@PLT
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
 lea rdi, [rip + .S4]
 movabs rsi, 0
 call rt_gvar_assign_int@PLT
 jmp snoch0_n10_α
 snoch0_n9_β:
 jmp snoch0_n10_α
snoch0_n10_α:
# IR_VAR gva
bb11_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp snoch0_n11_α
 snoch0_n10_β:
 jmp snoch0_n12_α
snoch0_n11_α:
# IR_LIT_scalar
bb12_α:
 jmp snoch0_n13_α
 snoch0_n11_β:
 jmp snoch0_n12_α
snoch0_n12_α:
# IR_VAR gva
bb13_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 jmp snoch0_n14_α
 snoch0_n12_β:
 jmp snoch0_n15_α
snoch0_n13_α:
bb14_α:
# IR_BINOP_GVAR_ARITH
 mov rax, qword ptr [rbx + 24]
 mov rcx, 3
 add rax, rcx
 mov qword ptr [r12 + 48], rax
 jmp snoch0_n16_α
 snoch0_n13_β:
 jmp snoch0_n12_α
snoch0_n14_α:
# IR_LIT_scalar
bb15_α:
 jmp snoch0_n17_α
 snoch0_n14_β:
 jmp snoch0_n15_α
snoch0_n15_α:
# IR_VAR gva
bb16_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 56], rax
 mov qword ptr [r12 + 64], rdx
 jmp snoch0_n18_α
 snoch0_n15_β:
 jmp snoch0_n19_α
snoch0_n16_α:
bb17_α:
# IR_ASSIGN
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [rbx + 16], 6
 mov qword ptr [rbx + 24], rax
 jmp snoch0_n12_α
 snoch0_n16_β:
 jmp snoch0_n12_α
snoch0_n17_α:
bb18_α:
# IR_BINOP_GVAR_ARITH
 mov rax, qword ptr [rbx + 24]
 mov rcx, 1
 sub rax, rcx
 mov qword ptr [r12 + 72], rax
 jmp snoch0_n20_α
 snoch0_n17_β:
 jmp snoch0_n15_α
snoch0_n18_α:
# IR_LIT_scalar
bb19_α:
 jmp snoch0_n21_α
 snoch0_n18_β:
 jmp snoch0_n19_α
snoch0_n19_α:
# IR_VAR gva
bb20_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 jmp xgvarg25_done
 xgvarg25_β:
 jmp snoch0_n23_α
xgvarg25_done:
# IR_LIT_I
bb21_α:
 mov qword ptr [r12 + 96], 6
 mov rax, qword ptr [rip + .Lx29_0]
 mov qword ptr [r12 + 104], rax
 jmp xgvarg28_done
 xgvarg28_β:
 jmp snoch0_n23_α
.Lx29_0:
 .quad 10000000
xgvarg28_done:
bb22_α:
# BOX IR_CALL GE(...) inline integer relop [four-port, FAIL->ω]
   lea rdi, [rip + .S3]
 call rt_gvar_get_int@PLT
 mov qword ptr [r12 + 128], rax
 mov rcx, 10000000
 mov qword ptr [r12 + 112], 0
 mov qword ptr [r12 + 120], 0
 mov rax, qword ptr [r12 + 128]
 cmp rax, rcx
 jl snoch0_n23_α
 jmp snoch0_n22_α
 snoch0_n19_β:
 jmp snoch0_n23_α
snoch0_n20_α:
bb23_α:
# IR_ASSIGN
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [rbx + 16], 6
 mov qword ptr [rbx + 24], rax
 jmp snoch0_n15_α
 snoch0_n20_β:
 jmp snoch0_n15_α
snoch0_n21_α:
bb24_α:
# IR_BINOP_GVAR_ARITH
 mov rax, qword ptr [rbx + 24]
 mov rcx, 2
 imul rax, rcx
 mov qword ptr [r12 + 144], rax
 jmp snoch0_n24_α
 snoch0_n21_β:
 jmp snoch0_n19_α
snoch0_n22_α:
# IR_VAR gva
bb25_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 152], rax
 mov qword ptr [r12 + 160], rdx
 jmp snoch0_n25_α
 snoch0_n22_β:
 jmp snoch0_n23_α
snoch0_n23_α:
# IR_VAR gva
bb26_α:
 mov rax, qword ptr [rbx + 32]
 mov rdx, qword ptr [rbx + 40]
 mov qword ptr [r12 + 168], rax
 mov qword ptr [r12 + 176], rdx
 jmp xgvarg36_done
 xgvarg36_β:
 jmp snoch0_n27_α
xgvarg36_done:
# IR_LIT_I
bb27_α:
 mov qword ptr [r12 + 184], 6
 mov rax, qword ptr [rip + .Lx40_0]
 mov qword ptr [r12 + 192], rax
 jmp xgvarg39_done
 xgvarg39_β:
 jmp snoch0_n27_α
.Lx40_0:
 .quad 1000000
xgvarg39_done:
bb28_α:
# BOX IR_CALL LT(...) inline integer relop [four-port, FAIL->ω]
   lea rdi, [rip + .S4]
 call rt_gvar_get_int@PLT
 mov qword ptr [r12 + 216], rax
 mov rcx, 1000000
 mov qword ptr [r12 + 200], 0
 mov qword ptr [r12 + 208], 0
 mov rax, qword ptr [r12 + 216]
 cmp rax, rcx
 jge snoch0_n27_α
 jmp snoch0_n26_α
 snoch0_n23_β:
 jmp snoch0_n27_α
snoch0_n24_α:
bb29_α:
# IR_ASSIGN
 mov rax, qword ptr [r12 + 144]
 mov qword ptr [rbx + 16], 6
 mov qword ptr [rbx + 24], rax
 jmp snoch0_n19_α
 snoch0_n24_β:
 jmp snoch0_n19_α
snoch0_n25_α:
# IR_LIT_scalar
bb30_α:
 jmp snoch0_n28_α
 snoch0_n25_β:
 jmp snoch0_n23_α
snoch0_n26_α:
# IR_VAR gva
bb31_α:
 mov rax, qword ptr [rbx + 32]
 mov rdx, qword ptr [rbx + 40]
 mov qword ptr [r12 + 232], rax
 mov qword ptr [r12 + 240], rdx
 jmp snoch0_n29_α
 snoch0_n26_β:
 jmp snoch0_n27_α
snoch0_n27_α:
bb32_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn48: .string "TIME"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn48]
 lea rsi, [r12 + 264]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 248], rax
 mov qword ptr [r12 + 256], rdx
 cmp eax, 99
 je snoch0_n31_α
 jmp snoch0_n30_α
 snoch0_n27_β:
 jmp snoch0_n31_α
snoch0_n28_α:
bb33_α:
# IR_BINOP_GVAR_ARITH
 mov rax, qword ptr [rbx + 24]
 mov rcx, 10000
 cqo
 idiv rcx
 mov qword ptr [r12 + 264], rax
 jmp snoch0_n32_α
 snoch0_n28_β:
 jmp snoch0_n23_α
snoch0_n29_α:
# IR_LIT_scalar
bb34_α:
 jmp snoch0_n33_α
 snoch0_n29_β:
 jmp snoch0_n27_α
snoch0_n30_α:
bb35_α:
# IR_ASSIGN_CALL gva
 mov rax, qword ptr [r12 + 248]
 mov rcx, qword ptr [r12 + 256]
 mov qword ptr [rbx + 48], rax
 mov qword ptr [rbx + 56], rcx
 jmp snoch0_n31_α
 snoch0_n30_β:
 jmp snoch0_n31_α
snoch0_n31_α:
bb36_α:
# IR_ASSIGN_CONCAT 2 parts
 mov dword ptr [r12 + 272], 0
 lea rax, [rip + .S7]
 mov qword ptr [r12 + 280], rax
 mov dword ptr [r12 + 288], 1
 lea rax, [rip + .S3]
 mov qword ptr [r12 + 296], rax
 lea rdi, [rip + .S6]
 lea rsi, [r12 + 272]
 mov edx, 2
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_gvar_assign_concat_parts@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp snoch0_n34_α
 snoch0_n31_β:
 jmp snoch0_n34_α
snoch0_n32_α:
bb37_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 mov rdx, 6
 mov rcx, qword ptr [r12 + 264]
 call str_concat_d@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp snoch0_n35_α
 snoch0_n32_β:
 jmp snoch0_n23_α
snoch0_n33_α:
bb38_α:
# IR_BINOP_GVAR_ARITH
 mov rax, qword ptr [rbx + 40]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 320], rax
 jmp snoch0_n36_α
 snoch0_n33_β:
 jmp snoch0_n27_α
snoch0_n34_α:
# IR_LIT_scalar
bb39_α:
 jmp snoch0_n37_α
 snoch0_n34_β:
 jmp flat_γ
snoch0_n35_α:
bb40_α:
# IR_ASSIGN
 mov rax, qword ptr [r12 + 304]
 mov rcx, qword ptr [r12 + 312]
 mov qword ptr [rbx + 16], rax
 mov qword ptr [rbx + 24], rcx
 jmp snoch0_n10_α
 snoch0_n35_β:
 jmp snoch0_n23_α
snoch0_n36_α:
bb41_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 200]
 mov rsi, qword ptr [r12 + 208]
 mov rdx, 6
 mov rcx, qword ptr [r12 + 320]
 call str_concat_d@PLT
 mov qword ptr [r12 + 328], rax
 mov qword ptr [r12 + 336], rdx
 jmp snoch0_n38_α
 snoch0_n36_β:
 jmp snoch0_n27_α
snoch0_n37_α:
# IR_VAR gva
bb42_α:
 mov rax, qword ptr [rbx + 48]
 mov rdx, qword ptr [rbx + 56]
 mov qword ptr [r12 + 344], rax
 mov qword ptr [r12 + 352], rdx
 jmp snoch0_n39_α
 snoch0_n37_β:
 jmp flat_γ
snoch0_n38_α:
bb43_α:
# IR_ASSIGN
 mov rax, qword ptr [r12 + 328]
 mov rcx, qword ptr [r12 + 336]
 mov qword ptr [rbx + 32], rax
 mov qword ptr [rbx + 40], rcx
 jmp snoch0_n10_α
 snoch0_n38_β:
 jmp snoch0_n27_α
snoch0_n39_α:
# IR_VAR gva
bb44_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 360], rax
 mov qword ptr [r12 + 368], rdx
 jmp snoch0_n40_α
 snoch0_n39_β:
 jmp flat_γ
snoch0_n40_α:
bb45_α:
# IR_BINOP_GVAR_ARITH
 mov rax, qword ptr [rbx + 56]
 mov rcx, qword ptr [rbx + 8]
 sub rax, rcx
 mov qword ptr [r12 + 376], rax
 jmp snoch0_n41_α
 snoch0_n40_β:
 jmp flat_γ
snoch0_n41_α:
# IR_LIT_S
bb46_α:
 mov qword ptr [r12 + 384], 1
 mov rax, qword ptr [rip + .Lx67_0]
 mov qword ptr [r12 + 392], rax
 jmp xgvcat66_0d
 xgvcat66_0b:
 jmp flat_γ
.Lx67_0:
 .quad .Lx67_0_s
.Lx67_0_s:
 .string "ms: "
xgvcat66_0d:
bb47_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 384]
 mov rsi, qword ptr [r12 + 392]
 mov rdx, 6
 mov rcx, qword ptr [r12 + 376]
 call str_concat_d@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 jmp snoch0_n42_α
 snoch0_n41_β:
 jmp flat_γ
snoch0_n42_α:
bb48_α:
# IR_ASSIGN
 lea rdi, [rip + .S6]
 mov rsi, qword ptr [r12 + 400]
 mov rdx, qword ptr [r12 + 408]
 call rt_gvar_assign_descr@PLT
 jmp flat_γ
 snoch0_n42_β:
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
.S4: .string "OUTER"
.S5: .string "T2"
.S6: .string "OUTPUT"
.S7: .string "result: "
.text
