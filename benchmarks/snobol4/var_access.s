  .intel_syntax noprefix
  .text
  .section .rodata
  .Lgvan0: .string "T1"
  .Lgvan1: .string "A"
  .Lgvan2: .string "B"
  .Lgvan3: .string "C"
  .Lgvan4: .string "D"
  .Lgvan5: .string "E"
  .Lgvan6: .string "N"
  .Lgvan7: .string "T2"
  .align 8
__gva_names:
  .quad .Lgvan0
  .quad .Lgvan1
  .quad .Lgvan2
  .quad .Lgvan3
  .quad .Lgvan4
  .quad .Lgvan5
  .quad .Lgvan6
  .quad .Lgvan7
  .section .bss
  .align 16
__gva: .space 128, 0
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
  mov edx, 8
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
 movabs rsi, 2
 call rt_gvar_assign_int@PLT
 jmp snoch0_n10_α
 snoch0_n9_β:
 jmp snoch0_n10_α
snoch0_n10_α:
# IR_LIT_scalar
bb11_α:
 jmp snoch0_n11_α
 snoch0_n10_β:
 jmp snoch0_n12_α
snoch0_n11_α:
bb12_α:
# IR_ASSIGN_LIT_I
 lea rdi, [rip + .S5]
 movabs rsi, 0
 call rt_gvar_assign_int@PLT
 jmp snoch0_n12_α
 snoch0_n11_β:
 jmp snoch0_n12_α
snoch0_n12_α:
# IR_LIT_scalar
bb13_α:
 jmp snoch0_n13_α
 snoch0_n12_β:
 jmp snoch0_n14_α
snoch0_n13_α:
bb14_α:
# IR_ASSIGN_LIT_I
 lea rdi, [rip + .S6]
 movabs rsi, 0
 call rt_gvar_assign_int@PLT
 jmp snoch0_n14_α
 snoch0_n13_β:
 jmp snoch0_n14_α
snoch0_n14_α:
# IR_LIT_scalar
bb15_α:
 jmp snoch0_n15_α
 snoch0_n14_β:
 jmp snoch0_n16_α
snoch0_n15_α:
bb16_α:
# IR_ASSIGN_LIT_I
 lea rdi, [rip + .S7]
 movabs rsi, 0
 call rt_gvar_assign_int@PLT
 jmp snoch0_n16_α
 snoch0_n15_β:
 jmp snoch0_n16_α
snoch0_n16_α:
# IR_LIT_scalar
bb17_α:
 jmp snoch0_n17_α
 snoch0_n16_β:
 jmp snoch0_n18_α
snoch0_n17_α:
bb18_α:
# IR_ASSIGN_LIT_I
 lea rdi, [rip + .S8]
 movabs rsi, 0
 call rt_gvar_assign_int@PLT
 jmp snoch0_n18_α
 snoch0_n17_β:
 jmp snoch0_n18_α
snoch0_n18_α:
# IR_VAR gva
bb19_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp snoch0_n19_α
 snoch0_n18_β:
 jmp snoch0_n20_α
snoch0_n19_α:
# IR_LIT_scalar
bb20_α:
 jmp snoch0_n21_α
 snoch0_n19_β:
 jmp snoch0_n20_α
snoch0_n20_α:
# IR_VAR gva
bb21_α:
 mov rax, qword ptr [rbx + 32]
 mov rdx, qword ptr [rbx + 40]
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 jmp snoch0_n22_α
 snoch0_n20_β:
 jmp snoch0_n23_α
snoch0_n21_α:
bb22_α:
# IR_BINOP_GVAR_ARITH
 mov rdx, qword ptr [rbx + 16]
 cmp edx, 6
 jne .Lx26_0
 mov rax, qword ptr [rbx + 24]
 jmp .Lx26_1
.Lx26_0:
 lea rdi, [rip + .S3]
 call rt_gvar_get_int@PLT
.Lx26_1:
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 48], rax
 jmp snoch0_n24_α
 snoch0_n21_β:
 jmp snoch0_n20_α
snoch0_n22_α:
# IR_LIT_scalar
bb23_α:
 jmp snoch0_n25_α
 snoch0_n22_β:
 jmp snoch0_n23_α
snoch0_n23_α:
# IR_VAR gva
bb24_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 56], rax
 mov qword ptr [r12 + 64], rdx
 jmp snoch0_n26_α
 snoch0_n23_β:
 jmp snoch0_n27_α
snoch0_n24_α:
bb25_α:
# IR_ASSIGN
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [rbx + 16], 6
 mov qword ptr [rbx + 24], rax
 jmp snoch0_n20_α
 snoch0_n24_β:
 jmp snoch0_n20_α
snoch0_n25_α:
bb26_α:
# IR_BINOP_GVAR_ARITH
 mov rdx, qword ptr [rbx + 32]
 cmp edx, 6
 jne .Lx33_0
 mov rax, qword ptr [rbx + 40]
 jmp .Lx33_1
.Lx33_0:
 lea rdi, [rip + .S4]
 call rt_gvar_get_int@PLT
.Lx33_1:
 mov rcx, 2
 add rax, rcx
 mov qword ptr [r12 + 72], rax
 jmp snoch0_n28_α
 snoch0_n25_β:
 jmp snoch0_n23_α
snoch0_n26_α:
# IR_VAR gva
bb27_α:
 mov rax, qword ptr [rbx + 32]
 mov rdx, qword ptr [rbx + 40]
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 jmp snoch0_n29_α
 snoch0_n26_β:
 jmp snoch0_n27_α
snoch0_n27_α:
# IR_VAR gva
bb28_α:
 mov rax, qword ptr [rbx + 48]
 mov rdx, qword ptr [rbx + 56]
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp snoch0_n30_α
 snoch0_n27_β:
 jmp snoch0_n31_α
snoch0_n28_α:
bb29_α:
# IR_ASSIGN
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [rbx + 32], 6
 mov qword ptr [rbx + 40], rax
 jmp snoch0_n23_α
 snoch0_n28_β:
 jmp snoch0_n23_α
snoch0_n29_α:
bb30_α:
# IR_BINOP_GVAR_ARITH
 mov rdx, qword ptr [rbx + 32]
 cmp edx, 6
 jne .Lx41_0
 mov rcx, qword ptr [rbx + 40]
 jmp .Lx41_1
.Lx41_0:
 lea rdi, [rip + .S4]
 call rt_gvar_get_int@PLT
 mov rcx, rax
.Lx41_1:
 mov qword ptr [r12 + 112], rcx
 mov rdx, qword ptr [rbx + 16]
 cmp edx, 6
 jne .Lx41_2
 mov rax, qword ptr [rbx + 24]
 jmp .Lx41_3
.Lx41_2:
 lea rdi, [rip + .S3]
 call rt_gvar_get_int@PLT
.Lx41_3:
 mov rcx, qword ptr [r12 + 112]
 add rax, rcx
 mov qword ptr [r12 + 112], rax
 jmp snoch0_n32_α
 snoch0_n29_β:
 jmp snoch0_n27_α
snoch0_n30_α:
# IR_VAR gva
bb31_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 120], rax
 mov qword ptr [r12 + 128], rdx
 jmp snoch0_n33_α
 snoch0_n30_β:
 jmp snoch0_n31_α
snoch0_n31_α:
# IR_VAR gva
bb32_α:
 mov rax, qword ptr [rbx + 64]
 mov rdx, qword ptr [rbx + 72]
 mov qword ptr [r12 + 136], rax
 mov qword ptr [r12 + 144], rdx
 jmp snoch0_n34_α
 snoch0_n31_β:
 jmp snoch0_n35_α
snoch0_n32_α:
bb33_α:
# IR_ASSIGN
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [rbx + 48], 6
 mov qword ptr [rbx + 56], rax
 jmp snoch0_n27_α
 snoch0_n32_β:
 jmp snoch0_n27_α
snoch0_n33_α:
bb34_α:
# IR_BINOP_GVAR_ARITH
 mov rdx, qword ptr [rbx + 16]
 cmp edx, 6
 jne .Lx49_0
 mov rcx, qword ptr [rbx + 24]
 jmp .Lx49_1
.Lx49_0:
 lea rdi, [rip + .S3]
 call rt_gvar_get_int@PLT
 mov rcx, rax
.Lx49_1:
 mov qword ptr [r12 + 152], rcx
 mov rdx, qword ptr [rbx + 48]
 cmp edx, 6
 jne .Lx49_2
 mov rax, qword ptr [rbx + 56]
 jmp .Lx49_3
.Lx49_2:
 lea rdi, [rip + .S5]
 call rt_gvar_get_int@PLT
.Lx49_3:
 mov rcx, qword ptr [r12 + 152]
 add rax, rcx
 mov qword ptr [r12 + 152], rax
 jmp snoch0_n36_α
 snoch0_n33_β:
 jmp snoch0_n31_α
snoch0_n34_α:
# IR_VAR gva
bb35_α:
 mov rax, qword ptr [rbx + 32]
 mov rdx, qword ptr [rbx + 40]
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp snoch0_n37_α
 snoch0_n34_β:
 jmp snoch0_n35_α
snoch0_n35_α:
# IR_VAR gva
bb36_α:
 mov rax, qword ptr [rbx + 96]
 mov rdx, qword ptr [rbx + 104]
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xgvarg52_done
 xgvarg52_β:
 jmp snoch0_n39_α
xgvarg52_done:
# IR_LIT_I
bb37_α:
 mov qword ptr [r12 + 192], 6
 mov rax, qword ptr [rip + .Lx56_0]
 mov qword ptr [r12 + 200], rax
 jmp xgvarg55_done
 xgvarg55_β:
 jmp snoch0_n39_α
.Lx56_0:
 .quad 10000000
xgvarg55_done:
bb38_α:
# BOX IR_CALL LT(...) inline integer relop [four-port, FAIL->ω]
 mov rdx, qword ptr [rbx + 96]
 cmp edx, 6
 jne .Lx58_0
 mov rax, qword ptr [rbx + 104]
 jmp .Lx58_1
.Lx58_0:
   lea rdi, [rip + .S8]
 call rt_gvar_get_int@PLT
.Lx58_1:
 mov qword ptr [r12 + 224], rax
 mov rcx, 10000000
 mov qword ptr [r12 + 208], 0
 mov qword ptr [r12 + 216], 0
 mov rax, qword ptr [r12 + 224]
 cmp rax, rcx
 jge snoch0_n39_α
 jmp snoch0_n38_α
 snoch0_n35_β:
 jmp snoch0_n39_α
snoch0_n36_α:
bb39_α:
# IR_ASSIGN
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [rbx + 64], 6
 mov qword ptr [rbx + 72], rax
 jmp snoch0_n31_α
 snoch0_n36_β:
 jmp snoch0_n31_α
snoch0_n37_α:
bb40_α:
# IR_BINOP_GVAR_ARITH
 mov rdx, qword ptr [rbx + 32]
 cmp edx, 6
 jne .Lx62_0
 mov rcx, qword ptr [rbx + 40]
 jmp .Lx62_1
.Lx62_0:
 lea rdi, [rip + .S4]
 call rt_gvar_get_int@PLT
 mov rcx, rax
.Lx62_1:
 mov qword ptr [r12 + 240], rcx
 mov rdx, qword ptr [rbx + 64]
 cmp edx, 6
 jne .Lx62_2
 mov rax, qword ptr [rbx + 72]
 jmp .Lx62_3
.Lx62_2:
 lea rdi, [rip + .S6]
 call rt_gvar_get_int@PLT
.Lx62_3:
 mov rcx, qword ptr [r12 + 240]
 add rax, rcx
 mov qword ptr [r12 + 240], rax
 jmp snoch0_n40_α
 snoch0_n37_β:
 jmp snoch0_n35_α
snoch0_n38_α:
# IR_VAR gva
bb41_α:
 mov rax, qword ptr [rbx + 96]
 mov rdx, qword ptr [rbx + 104]
 mov qword ptr [r12 + 248], rax
 mov qword ptr [r12 + 256], rdx
 jmp snoch0_n41_α
 snoch0_n38_β:
 jmp snoch0_n39_α
snoch0_n39_α:
bb42_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn66: .string "TIME"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn66]
 lea rsi, [r12 + 280]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 264], rax
 mov qword ptr [r12 + 272], rdx
 cmp eax, 99
 je snoch0_n43_α
 jmp snoch0_n42_α
 snoch0_n39_β:
 jmp snoch0_n43_α
snoch0_n40_α:
bb43_α:
# IR_ASSIGN
 mov rax, qword ptr [r12 + 240]
 mov qword ptr [rbx + 80], 6
 mov qword ptr [rbx + 88], rax
 jmp snoch0_n35_α
 snoch0_n40_β:
 jmp snoch0_n35_α
snoch0_n41_α:
# IR_LIT_scalar
bb44_α:
 jmp snoch0_n44_α
 snoch0_n41_β:
 jmp snoch0_n39_α
snoch0_n42_α:
bb45_α:
# IR_ASSIGN_CALL gva
 mov rax, qword ptr [r12 + 264]
 mov rcx, qword ptr [r12 + 272]
 mov qword ptr [rbx + 112], rax
 mov qword ptr [rbx + 120], rcx
 jmp snoch0_n43_α
 snoch0_n42_β:
 jmp snoch0_n43_α
snoch0_n43_α:
bb46_α:
# IR_ASSIGN_CONCAT 2 parts
 mov dword ptr [r12 + 280], 0
 lea rax, [rip + .S11]
 mov qword ptr [r12 + 288], rax
 mov dword ptr [r12 + 296], 1
 lea rax, [rip + .S7]
 mov qword ptr [r12 + 304], rax
 lea rdi, [rip + .S10]
 lea rsi, [r12 + 280]
 mov edx, 2
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_gvar_assign_concat_parts@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp snoch0_n45_α
 snoch0_n43_β:
 jmp snoch0_n45_α
snoch0_n44_α:
bb47_α:
# IR_BINOP_GVAR_ARITH
 mov rdx, qword ptr [rbx + 96]
 cmp edx, 6
 jne .Lx73_0
 mov rax, qword ptr [rbx + 104]
 jmp .Lx73_1
.Lx73_0:
 lea rdi, [rip + .S8]
 call rt_gvar_get_int@PLT
.Lx73_1:
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 312], rax
 jmp snoch0_n46_α
 snoch0_n44_β:
 jmp snoch0_n39_α
snoch0_n45_α:
# IR_LIT_scalar
bb48_α:
 jmp snoch0_n47_α
 snoch0_n45_β:
 jmp flat_γ
snoch0_n46_α:
bb49_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 208]
 mov rsi, qword ptr [r12 + 216]
 mov rdx, 6
 mov rcx, qword ptr [r12 + 320]
 call str_concat_d@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp snoch0_n48_α
 snoch0_n46_β:
 jmp snoch0_n39_α
snoch0_n47_α:
# IR_VAR gva
bb50_α:
 mov rax, qword ptr [rbx + 112]
 mov rdx, qword ptr [rbx + 120]
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp snoch0_n49_α
 snoch0_n47_β:
 jmp flat_γ
snoch0_n48_α:
bb51_α:
# IR_ASSIGN
 mov rax, qword ptr [r12 + 320]
 mov rcx, qword ptr [r12 + 328]
 mov qword ptr [rbx + 96], rax
 mov qword ptr [rbx + 104], rcx
 jmp snoch0_n18_α
 snoch0_n48_β:
 jmp snoch0_n39_α
snoch0_n49_α:
# IR_VAR gva
bb52_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp snoch0_n50_α
 snoch0_n49_β:
 jmp flat_γ
snoch0_n50_α:
bb53_α:
# IR_BINOP_GVAR_ARITH
 mov rdx, qword ptr [rbx + 0]
 cmp edx, 6
 jne .Lx83_0
 mov rcx, qword ptr [rbx + 8]
 jmp .Lx83_1
.Lx83_0:
 lea rdi, [rip + .S2]
 call rt_gvar_get_int@PLT
 mov rcx, rax
.Lx83_1:
 mov qword ptr [r12 + 368], rcx
 mov rdx, qword ptr [rbx + 112]
 cmp edx, 6
 jne .Lx83_2
 mov rax, qword ptr [rbx + 120]
 jmp .Lx83_3
.Lx83_2:
 lea rdi, [rip + .S9]
 call rt_gvar_get_int@PLT
.Lx83_3:
 mov rcx, qword ptr [r12 + 368]
 sub rax, rcx
 mov qword ptr [r12 + 368], rax
 jmp snoch0_n51_α
 snoch0_n50_β:
 jmp flat_γ
snoch0_n51_α:
# IR_LIT_S
bb54_α:
 mov qword ptr [r12 + 376], 1
 mov rax, qword ptr [rip + .Lx85_0]
 mov qword ptr [r12 + 384], rax
 jmp xgvcat84_0d
 xgvcat84_0b:
 jmp flat_γ
.Lx85_0:
 .quad .Lx85_0_s
.Lx85_0_s:
 .string "ms: "
xgvcat84_0d:
bb55_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 376]
 mov rsi, qword ptr [r12 + 384]
 mov rdx, 6
 mov rcx, qword ptr [r12 + 376]
 call str_concat_d@PLT
 mov qword ptr [r12 + 392], rax
 mov qword ptr [r12 + 400], rdx
 jmp snoch0_n52_α
 snoch0_n51_β:
 jmp flat_γ
snoch0_n52_α:
bb56_α:
# IR_ASSIGN
 lea rdi, [rip + .S10]
 mov rsi, qword ptr [r12 + 392]
 mov rdx, qword ptr [r12 + 400]
 call rt_gvar_assign_descr@PLT
 jmp flat_γ
 snoch0_n52_β:
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
.S3: .string "A"
.S4: .string "B"
.S5: .string "C"
.S6: .string "D"
.S7: .string "E"
.S8: .string "N"
.S9: .string "T2"
.S10: .string "OUTPUT"
.S11: .string "result: "
.text
