  .intel_syntax noprefix
  .text
  .section .rodata
  .Lgvan0: .string "T1"
  .Lgvan1: .string "OUTER"
  .Lgvan2: .string "T"
  .Lgvan3: .string "I"
  .Lgvan4: .string "SUM"
  .Lgvan5: .string "T2"
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
  call core_lib_init@PLT
  call rt_proc_reset@PLT
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
# IR_LIT_I
bb9_α:
 mov qword ptr [r12 + 16], 6
 mov rax, qword ptr [rip + .Lx11_0]
 mov qword ptr [r12 + 24], rax
 jmp xgvarg10_done
 xgvarg10_β:
 jmp snoch0_n10_α
.Lx11_0:
 .quad 512
xgvarg10_done:
bb10_α:
# BOX IR_CALL TABLE(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+16] -> [r12+48]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 56], rax
  .section .rodata
  .Lbynamefn13: .string "TABLE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn13]
 lea rsi, [r12 + 48]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je snoch0_n10_α
 jmp snoch0_n9_α
snoch0_n8_β:
 jmp snoch0_n10_α
snoch0_n9_α:
bb11_α:
# IR_ASSIGN_CALL gva
 mov rax, qword ptr [r12 + 32]
 mov rcx, qword ptr [r12 + 40]
 mov qword ptr [rbx + 32], rax
 mov qword ptr [rbx + 40], rcx
 jmp snoch0_n10_α
 snoch0_n9_β:
 jmp snoch0_n10_α
snoch0_n10_α:
# IR_LIT_scalar
bb12_α:
 jmp snoch0_n11_α
 snoch0_n10_β:
 jmp snoch0_n12_α
snoch0_n11_α:
bb13_α:
# IR_ASSIGN_LIT_I
 lea rdi, [rip + .S5]
 movabs rsi, 0
 call rt_gvar_assign_int@PLT
 jmp snoch0_n12_α
 snoch0_n11_β:
 jmp snoch0_n12_α
snoch0_n12_α:
# IR_VAR gva
bb14_α:
 mov rax, qword ptr [rbx + 48]
 mov rdx, qword ptr [rbx + 56]
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 jmp xgvarg17_done
 xgvarg17_β:
 jmp snoch0_n14_α
xgvarg17_done:
# IR_LIT_I
bb15_α:
 mov qword ptr [r12 + 80], 6
 mov rax, qword ptr [rip + .Lx21_0]
 mov qword ptr [r12 + 88], rax
 jmp xgvarg20_done
 xgvarg20_β:
 jmp snoch0_n14_α
.Lx21_0:
 .quad 500
xgvarg20_done:
bb16_α:
# BOX IR_CALL LT(...) inline integer relop [four-port, FAIL->ω]
 mov rdx, qword ptr [rbx + 48]
 cmp edx, 6
 jne .Lx23_0
 mov rax, qword ptr [rbx + 56]
 jmp .Lx23_1
.Lx23_0:
   lea rdi, [rip + .S5]
 call rt_gvar_get_int@PLT
.Lx23_1:
 mov qword ptr [r12 + 112], rax
 mov rcx, 500
 mov qword ptr [r12 + 96], 0
 mov qword ptr [r12 + 104], 0
 mov rax, qword ptr [r12 + 112]
 cmp rax, rcx
 jge snoch0_n14_α
 jmp snoch0_n13_α
 snoch0_n12_β:
 jmp snoch0_n14_α
snoch0_n13_α:
# IR_VAR gva
bb17_α:
 mov rax, qword ptr [rbx + 48]
 mov rdx, qword ptr [rbx + 56]
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp snoch0_n15_α
 snoch0_n13_β:
 jmp snoch0_n14_α
snoch0_n14_α:
# IR_LIT_scalar
bb18_α:
 jmp snoch0_n16_α
 snoch0_n14_β:
 jmp snoch0_n17_α
snoch0_n15_α:
# IR_LIT_scalar
bb19_α:
 jmp snoch0_n18_α
 snoch0_n15_β:
 jmp snoch0_n14_α
snoch0_n16_α:
bb20_α:
# IR_ASSIGN_LIT_I
 lea rdi, [rip + .S6]
 movabs rsi, 0
 call rt_gvar_assign_int@PLT
 jmp snoch0_n17_α
 snoch0_n16_β:
 jmp snoch0_n17_α
snoch0_n17_α:
# IR_LIT_scalar
bb21_α:
 jmp snoch0_n19_α
 snoch0_n17_β:
 jmp snoch0_n20_α
snoch0_n18_α:
bb22_α:
# IR_BINOP_GVAR_ARITH
 mov rdx, qword ptr [rbx + 48]
 cmp edx, 6
 jne .Lx31_0
 mov rax, qword ptr [rbx + 56]
 jmp .Lx31_1
.Lx31_0:
 lea rdi, [rip + .S5]
 call rt_gvar_get_int@PLT
.Lx31_1:
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 144], rax
 jmp snoch0_n21_α
 snoch0_n18_β:
 jmp snoch0_n14_α
snoch0_n19_α:
bb23_α:
# IR_ASSIGN_LIT_I
 lea rdi, [rip + .S5]
 movabs rsi, 0
 call rt_gvar_assign_int@PLT
 jmp snoch0_n20_α
 snoch0_n19_β:
 jmp snoch0_n20_α
snoch0_n20_α:
# IR_VAR gva
bb24_α:
 mov rax, qword ptr [rbx + 48]
 mov rdx, qword ptr [rbx + 56]
 mov qword ptr [r12 + 152], rax
 mov qword ptr [r12 + 160], rdx
 jmp xgvarg33_done
 xgvarg33_β:
 jmp snoch0_n23_α
xgvarg33_done:
# IR_LIT_I
bb25_α:
 mov qword ptr [r12 + 168], 6
 mov rax, qword ptr [rip + .Lx37_0]
 mov qword ptr [r12 + 176], rax
 jmp xgvarg36_done
 xgvarg36_β:
 jmp snoch0_n23_α
.Lx37_0:
 .quad 500
xgvarg36_done:
bb26_α:
# BOX IR_CALL LT(...) inline integer relop [four-port, FAIL->ω]
 mov rdx, qword ptr [rbx + 48]
 cmp edx, 6
 jne .Lx39_0
 mov rax, qword ptr [rbx + 56]
 jmp .Lx39_1
.Lx39_0:
   lea rdi, [rip + .S5]
 call rt_gvar_get_int@PLT
.Lx39_1:
 mov qword ptr [r12 + 200], rax
 mov rcx, 500
 mov qword ptr [r12 + 184], 0
 mov qword ptr [r12 + 192], 0
 mov rax, qword ptr [r12 + 200]
 cmp rax, rcx
 jge snoch0_n23_α
 jmp snoch0_n22_α
 snoch0_n20_β:
 jmp snoch0_n23_α
snoch0_n21_α:
bb27_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 96]
 mov rsi, qword ptr [r12 + 104]
 mov rdx, 6
 mov rcx, qword ptr [r12 + 144]
 call str_concat_d@PLT
 mov qword ptr [r12 + 216], rax
 mov qword ptr [r12 + 224], rdx
 jmp snoch0_n24_α
 snoch0_n21_β:
 jmp snoch0_n14_α
snoch0_n22_α:
# IR_VAR gva
bb28_α:
 mov rax, qword ptr [rbx + 48]
 mov rdx, qword ptr [rbx + 56]
 mov qword ptr [r12 + 232], rax
 mov qword ptr [r12 + 240], rdx
 jmp snoch0_n25_α
 snoch0_n22_β:
 jmp snoch0_n23_α
snoch0_n23_α:
# IR_VAR gva
bb29_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 248], rax
 mov qword ptr [r12 + 256], rdx
 jmp xgvarg43_done
 xgvarg43_β:
 jmp snoch0_n27_α
xgvarg43_done:
# IR_LIT_I
bb30_α:
 mov qword ptr [r12 + 264], 6
 mov rax, qword ptr [rip + .Lx47_0]
 mov qword ptr [r12 + 272], rax
 jmp xgvarg46_done
 xgvarg46_β:
 jmp snoch0_n27_α
.Lx47_0:
 .quad 5000
xgvarg46_done:
bb31_α:
# BOX IR_CALL LT(...) inline integer relop [four-port, FAIL->ω]
 mov rdx, qword ptr [rbx + 16]
 cmp edx, 6
 jne .Lx49_0
 mov rax, qword ptr [rbx + 24]
 jmp .Lx49_1
.Lx49_0:
   lea rdi, [rip + .S3]
 call rt_gvar_get_int@PLT
.Lx49_1:
 mov qword ptr [r12 + 296], rax
 mov rcx, 5000
 mov qword ptr [r12 + 280], 0
 mov qword ptr [r12 + 288], 0
 mov rax, qword ptr [r12 + 296]
 cmp rax, rcx
 jge snoch0_n27_α
 jmp snoch0_n26_α
 snoch0_n23_β:
 jmp snoch0_n27_α
snoch0_n24_α:
bb32_α:
# IR_ASSIGN
 mov rax, qword ptr [r12 + 216]
 mov rcx, qword ptr [r12 + 224]
 mov qword ptr [rbx + 48], rax
 mov qword ptr [rbx + 56], rcx
 jmp snoch0_n28_α
 snoch0_n24_β:
 jmp snoch0_n14_α
snoch0_n25_α:
# IR_LIT_scalar
bb33_α:
 jmp snoch0_n29_α
 snoch0_n25_β:
 jmp snoch0_n23_α
snoch0_n26_α:
# IR_VAR gva
bb34_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 312], rax
 mov qword ptr [r12 + 320], rdx
 jmp snoch0_n30_α
 snoch0_n26_β:
 jmp snoch0_n27_α
snoch0_n27_α:
bb35_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn56: .string "TIME"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn56]
 lea rsi, [r12 + 344]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 328], rax
 mov qword ptr [r12 + 336], rdx
 cmp eax, 99
 je snoch0_n32_α
 jmp snoch0_n31_α
 snoch0_n27_β:
 jmp snoch0_n32_α
snoch0_n28_α:
# IR_VAR gva
bb36_α:
 mov rax, qword ptr [rbx + 48]
 mov rdx, qword ptr [rbx + 56]
 mov qword ptr [r12 + 344], rax
 mov qword ptr [r12 + 352], rdx
 jmp snoch0_n33_α
 snoch0_n28_β:
 jmp snoch0_n12_α
snoch0_n29_α:
bb37_α:
# IR_BINOP_GVAR_ARITH
 mov rdx, qword ptr [rbx + 48]
 cmp edx, 6
 jne .Lx60_0
 mov rax, qword ptr [rbx + 56]
 jmp .Lx60_1
.Lx60_0:
 lea rdi, [rip + .S5]
 call rt_gvar_get_int@PLT
.Lx60_1:
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 360], rax
 jmp snoch0_n34_α
 snoch0_n29_β:
 jmp snoch0_n23_α
snoch0_n30_α:
# IR_LIT_scalar
bb38_α:
 jmp snoch0_n35_α
 snoch0_n30_β:
 jmp snoch0_n27_α
snoch0_n31_α:
bb39_α:
# IR_ASSIGN_CALL gva
 mov rax, qword ptr [r12 + 328]
 mov rcx, qword ptr [r12 + 336]
 mov qword ptr [rbx + 80], rax
 mov qword ptr [rbx + 88], rcx
 jmp snoch0_n32_α
 snoch0_n31_β:
 jmp snoch0_n32_α
snoch0_n32_α:
bb40_α:
# IR_ASSIGN_CONCAT 2 parts
 mov dword ptr [r12 + 368], 0
 lea rax, [rip + .S9]
 mov qword ptr [r12 + 376], rax
 mov dword ptr [r12 + 384], 1
 lea rax, [rip + .S6]
 mov qword ptr [r12 + 392], rax
 lea rdi, [rip + .S8]
 lea rsi, [r12 + 368]
 mov edx, 2
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_gvar_assign_concat_parts@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp snoch0_n36_α
 snoch0_n32_β:
 jmp snoch0_n36_α
snoch0_n33_α:
# IR_LIT_scalar
bb41_α:
 jmp snoch0_n37_α
 snoch0_n33_β:
 jmp snoch0_n12_α
snoch0_n34_α:
bb42_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 184]
 mov rsi, qword ptr [r12 + 192]
 mov rdx, 6
 mov rcx, qword ptr [r12 + 360]
 call str_concat_d@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 jmp snoch0_n38_α
 snoch0_n34_β:
 jmp snoch0_n23_α
snoch0_n35_α:
bb43_α:
# IR_BINOP_GVAR_ARITH
 mov rdx, qword ptr [rbx + 16]
 cmp edx, 6
 jne .Lx67_0
 mov rax, qword ptr [rbx + 24]
 jmp .Lx67_1
.Lx67_0:
 lea rdi, [rip + .S3]
 call rt_gvar_get_int@PLT
.Lx67_1:
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 416], rax
 jmp snoch0_n39_α
 snoch0_n35_β:
 jmp snoch0_n27_α
snoch0_n36_α:
# IR_LIT_scalar
bb44_α:
 jmp snoch0_n40_α
 snoch0_n36_β:
 jmp flat_γ
snoch0_n37_α:
bb45_α:
# IR_BINOP_GVAR_ARITH
 mov rdx, qword ptr [rbx + 48]
 cmp edx, 6
 jne .Lx70_0
 mov rax, qword ptr [rbx + 56]
 jmp .Lx70_1
.Lx70_0:
 lea rdi, [rip + .S5]
 call rt_gvar_get_int@PLT
.Lx70_1:
 mov rcx, 2
 imul rax, rcx
 mov qword ptr [r12 + 424], rax
 jmp snoch0_n41_α
 snoch0_n37_β:
 jmp snoch0_n12_α
snoch0_n38_α:
bb46_α:
# IR_ASSIGN
 mov rax, qword ptr [r12 + 400]
 mov rcx, qword ptr [r12 + 408]
 mov qword ptr [rbx + 48], rax
 mov qword ptr [rbx + 56], rcx
 jmp snoch0_n42_α
 snoch0_n38_β:
 jmp snoch0_n23_α
snoch0_n39_α:
bb47_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 280]
 mov rsi, qword ptr [r12 + 288]
 mov rdx, 6
 mov rcx, qword ptr [r12 + 416]
 call str_concat_d@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 jmp snoch0_n43_α
 snoch0_n39_β:
 jmp snoch0_n27_α
snoch0_n40_α:
# IR_VAR gva
bb48_α:
 mov rax, qword ptr [rbx + 80]
 mov rdx, qword ptr [rbx + 88]
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 jmp snoch0_n44_α
 snoch0_n40_β:
 jmp flat_γ
snoch0_n41_α:
bb49_α:
# IR_BINOP_GVAR_ARITH
 mov rdx, qword ptr [rbx + 48]
 cmp edx, 6
 jne .Lx78_0
 mov rax, qword ptr [rbx + 56]
 jmp .Lx78_1
.Lx78_0:
 lea rdi, [rip + .S5]
 call rt_gvar_get_int@PLT
.Lx78_1:
 mov rcx, 2
 imul rax, rcx
 mov qword ptr [r12 + 464], rax
 jmp xgvidxv76_done
 xgvidxv76_β:
 jmp snoch0_n12_α
xgvidxv76_done:
bb50_α:
# IR_IDX_SET: AXS inline DT_A+int fast path, else subscript_set
 lea rdi, [rip + .S4]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 472], rax
 mov qword ptr [r12 + 480], rdx
 lea rdi, [rip + .S5]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 488], rax
 mov qword ptr [r12 + 496], rdx
 mov rax, qword ptr [r12 + 424]
 movabs rdx, 6
 mov qword ptr [r12 + 424], rdx
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 472]
 cmp eax, 4
 jne .Lx80_0
 mov rax, qword ptr [r12 + 488]
 cmp eax, 6
 jne .Lx80_0
 mov rsi, qword ptr [r12 + 480]
 mov rcx, qword ptr [r12 + 496]
 mov r8, qword ptr [rsi]
 sub ecx, r8d
 js .Lx80_0
 mov r9, qword ptr [rsi + 4]
 sub r9d, r8d
 cmp ecx, r9d
 jg .Lx80_0
 mov r11, qword ptr [rsi + 24]
 movsxd rcx, ecx
 add rcx, rcx
 add rcx, rcx
 add rcx, rcx
 add rcx, rcx
 add r11, rcx
 mov rax, qword ptr [r12 + 424]
 mov rdx, qword ptr [r12 + 432]
 mov qword ptr [r11 + 0], rax
 mov qword ptr [r11 + 8], rdx
 jmp snoch0_n12_α
.Lx80_0:
 mov rdi, qword ptr [r12 + 472]
 mov rsi, qword ptr [r12 + 480]
 mov rdx, qword ptr [r12 + 488]
 mov rcx, qword ptr [r12 + 496]
 mov r8, qword ptr [r12 + 424]
 mov r9, qword ptr [r12 + 432]
 call subscript_set@PLT
 cmp eax, 0
 je snoch0_n12_α
 jmp snoch0_n12_α
 snoch0_n41_β:
 jmp snoch0_n12_α
snoch0_n42_α:
# IR_VAR gva
bb51_α:
 mov rax, qword ptr [rbx + 64]
 mov rdx, qword ptr [rbx + 72]
 mov qword ptr [r12 + 504], rax
 mov qword ptr [r12 + 512], rdx
 jmp snoch0_n45_α
 snoch0_n42_β:
 jmp snoch0_n20_α
snoch0_n43_α:
bb52_α:
# IR_ASSIGN
 mov rax, qword ptr [r12 + 432]
 mov rcx, qword ptr [r12 + 440]
 mov qword ptr [rbx + 16], rax
 mov qword ptr [rbx + 24], rcx
 jmp snoch0_n8_α
 snoch0_n43_β:
 jmp snoch0_n27_α
snoch0_n44_α:
# IR_VAR gva
bb53_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 520], rax
 mov qword ptr [r12 + 528], rdx
 jmp snoch0_n46_α
 snoch0_n44_β:
 jmp flat_γ
snoch0_n45_α:
bb54_α:
# IR_IDX: AXS inline DT_A+int fast path, else subscript_get
 lea rdi, [rip + .S5]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 536], rax
 mov qword ptr [r12 + 544], rdx
 lea rdi, [rip + .S4]
 call NV_GET_fn@PLT
 cmp eax, 4
 jne .Lx88_0
 mov r8, qword ptr [r12 + 536]
 cmp r8d, 6
 jne .Lx88_0
 mov rcx, qword ptr [r12 + 544]
 mov rsi, rdx
 mov r8, qword ptr [rsi]
 sub ecx, r8d
 js .Lx88_0
 mov r9, qword ptr [rsi + 4]
 sub r9d, r8d
 cmp ecx, r9d
 jg .Lx88_0
 mov r11, qword ptr [rsi + 24]
 movsxd rcx, ecx
 add rcx, rcx
 mov rax, [r11 + rcx*8]
 add r11, 8
 mov rdx, [r11 + rcx*8]
 mov qword ptr [r12 + 552], rax
 mov qword ptr [r12 + 560], rdx
 jmp snoch0_n47_α
.Lx88_0:
 mov rdi, rax
 mov rsi, rdx
 mov rdx, qword ptr [r12 + 536]
 mov rcx, qword ptr [r12 + 544]
 call subscript_get@PLT
 mov qword ptr [r12 + 552], rax
 mov qword ptr [r12 + 560], rdx
 jmp snoch0_n47_α
 snoch0_n45_β:
 jmp snoch0_n20_α
snoch0_n46_α:
bb55_α:
# IR_BINOP_GVAR_ARITH
 mov rdx, qword ptr [rbx + 0]
 cmp edx, 6
 jne .Lx90_0
 mov rcx, qword ptr [rbx + 8]
 jmp .Lx90_1
.Lx90_0:
 lea rdi, [rip + .S2]
 call rt_gvar_get_int@PLT
 mov rcx, rax
.Lx90_1:
 mov qword ptr [r12 + 568], rcx
 mov rdx, qword ptr [rbx + 80]
 cmp edx, 6
 jne .Lx90_2
 mov rax, qword ptr [rbx + 88]
 jmp .Lx90_3
.Lx90_2:
 lea rdi, [rip + .S7]
 call rt_gvar_get_int@PLT
.Lx90_3:
 mov rcx, qword ptr [r12 + 568]
 sub rax, rcx
 mov qword ptr [r12 + 568], rax
 jmp snoch0_n48_α
 snoch0_n46_β:
 jmp flat_γ
snoch0_n47_α:
bb56_α:
# IR_IDX: AXS inline DT_A+int fast path, else subscript_get
 lea rdi, [rip + .S5]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 lea rdi, [rip + .S4]
 call NV_GET_fn@PLT
 cmp eax, 4
 jne .Lx93_0
 mov r8, qword ptr [r12 + 576]
 cmp r8d, 6
 jne .Lx93_0
 mov rcx, qword ptr [r12 + 584]
 mov rsi, rdx
 mov r8, qword ptr [rsi]
 sub ecx, r8d
 js .Lx93_0
 mov r9, qword ptr [rsi + 4]
 sub r9d, r8d
 cmp ecx, r9d
 jg .Lx93_0
 mov r11, qword ptr [rsi + 24]
 movsxd rcx, ecx
 add rcx, rcx
 mov rax, [r11 + rcx*8]
 add r11, 8
 mov rdx, [r11 + rcx*8]
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 jmp xgvidx91_done
.Lx93_0:
 mov rdi, rax
 mov rsi, rdx
 mov rdx, qword ptr [r12 + 576]
 mov rcx, qword ptr [r12 + 584]
 call subscript_get@PLT
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 jmp xgvidx91_done
 xgvidx91_β:
 jmp snoch0_n20_α
xgvidx91_done:
bb57_α:
# IR_BINOP_GVAR_ARITH (dynamic operands: DESCR-in DESCR-out via rt_num_arith)
 lea rdi, [rip + .S6]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 504], rax
 mov qword ptr [r12 + 512], rdx
 mov rdi, qword ptr [r12 + 504]
 mov rsi, qword ptr [r12 + 512]
 mov rdx, qword ptr [r12 + 552]
 mov rcx, qword ptr [r12 + 560]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je snoch0_n20_α
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 jmp snoch0_n49_α
 snoch0_n47_β:
 jmp snoch0_n20_α
snoch0_n48_α:
# IR_LIT_S
bb58_α:
 mov qword ptr [r12 + 624], 1
 mov rax, qword ptr [rip + .Lx96_0]
 mov qword ptr [r12 + 632], rax
 jmp xgvcat95_0d
 xgvcat95_0b:
 jmp flat_γ
.Lx96_0:
 .quad .Lx96_0_s
.Lx96_0_s:
 .string "ms: "
xgvcat95_0d:
bb59_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 624]
 mov rsi, qword ptr [r12 + 632]
 mov rdx, 6
 mov rcx, qword ptr [r12 + 568]
 call str_concat_d@PLT
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 jmp snoch0_n50_α
 snoch0_n48_β:
 jmp flat_γ
snoch0_n49_α:
bb60_α:
# IR_ASSIGN
 mov rax, qword ptr [r12 + 608]
 mov rcx, qword ptr [r12 + 616]
 mov qword ptr [rbx + 64], rax
 mov qword ptr [rbx + 72], rcx
 jmp snoch0_n20_α
 snoch0_n49_β:
 jmp snoch0_n20_α
snoch0_n50_α:
bb61_α:
# IR_ASSIGN
 lea rdi, [rip + .S8]
 mov rsi, qword ptr [r12 + 640]
 mov rdx, qword ptr [r12 + 648]
 call rt_gvar_assign_descr@PLT
 jmp flat_γ
 snoch0_n50_β:
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
.S3: .string "OUTER"
.S4: .string "T"
.S5: .string "I"
.S6: .string "SUM"
.S7: .string "T2"
.S8: .string "OUTPUT"
.S9: .string "result: "
.text
