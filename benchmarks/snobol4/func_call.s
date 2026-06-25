  .intel_syntax noprefix
  .text
INC_α:
#=======================================================================================================================
    .global INC_α
    .global INC_β
    .global INC_γ
    .global INC_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
INC_α_body:
snoch0_n0_α:
# IR_VAR
bb1_α:
 mov rdi, qword ptr [rip + .Lx2_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp snoch0_n1_α
 snoch0_n0_β:
 jmp snoch0_n2_α
.Lx2_0:
 .quad .Lx2_0_s
.Lx2_0_s:
 .string "N"
snoch0_n1_α:
# IR_LIT_scalar
bb2_α:
 jmp snoch0_n3_α
 snoch0_n1_β:
 jmp snoch0_n2_α
snoch0_n2_α:
snoch0_n2_β:
jmp INC_γ
jmp INC_γ
snoch0_n3_α:
bb3_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S0]
 call rt_gvar_get_int@PLT
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 16], rax
 jmp snoch0_n4_α
 snoch0_n3_β:
 jmp snoch0_n2_α
snoch0_n4_α:
bb4_α:
# IR_ASSIGN
 lea rdi, [rip + .S1]
 mov rsi, qword ptr [r12 + 16]
 call rt_gvar_assign_int@PLT
 jmp snoch0_n2_α
 snoch0_n4_β:
 jmp snoch0_n2_α
INC_β:
jmp INC_ω
INC_γ:
mov eax, 1
xor edx, edx
pop r12
ret
INC_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .section .rodata
  .Lpn0: .string "INC"
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
  lea rsi, [rip + INC_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lpn0]
  mov esi, 24
  call rt_proc_set_frame_bytes@PLT
  pop rbp
  ret
  .section .rodata
  .Lgvan0: .string "INC"
  .Lgvan1: .string "N"
  .Lgvan2: .string "T1"
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
  call proc_startup
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
snoch8_n0_α:
# IR_LIT_scalar
bb5_α:
 jmp snoch8_n1_α
 snoch8_n0_β:
 jmp snoch8_n2_α
snoch8_n1_α:
bb6_α:
# IR_ASSIGN
 lea rdi, [rip + .S2]
 movabs rsi, 1
 call rt_gvar_assign_int@PLT
 jmp snoch8_n2_α
 snoch8_n1_β:
 jmp snoch8_n2_α
snoch8_n2_α:
# IR_LIT_scalar
bb7_α:
 jmp snoch8_n3_α
 snoch8_n2_β:
 jmp snoch8_n4_α
snoch8_n3_α:
bb8_α:
# IR_ASSIGN
 lea rdi, [rip + .S3]
 movabs rsi, 1000000000
 call rt_gvar_assign_int@PLT
 jmp snoch8_n4_α
 snoch8_n3_β:
 jmp snoch8_n4_α
snoch8_n4_α:
bb9_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S4]
 call rt_proc_define@PLT
 jmp snoch8_n5_α
 snoch8_n4_β:
 jmp snoch8_n5_α
snoch8_n5_α:
bb10_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn15: .string "TIME"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn15]
 lea rsi, [r12 + 16]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 cmp eax, 99
 je snoch8_n7_α
 jmp snoch8_n6_α
 snoch8_n5_β:
 jmp snoch8_n7_α
snoch8_n6_α:
bb11_α:
# IR_ASSIGN_CALL gva
 mov rax, qword ptr [r12 + 0]
 mov rcx, qword ptr [r12 + 8]
 mov qword ptr [rbx + 32], rax
 mov qword ptr [rbx + 40], rcx
 jmp snoch8_n7_α
 snoch8_n6_β:
 jmp snoch8_n7_α
snoch8_n7_α:
# IR_LIT_scalar
bb12_α:
 jmp snoch8_n8_α
 snoch8_n7_β:
 jmp snoch8_n9_α
snoch8_n8_α:
bb13_α:
# IR_ASSIGN_LIT_I
 lea rdi, [rip + .S6]
 movabs rsi, 0
 call rt_gvar_assign_int@PLT
 jmp snoch8_n9_α
 snoch8_n8_β:
 jmp snoch8_n9_α
snoch8_n9_α:
# IR_LIT_scalar
bb14_α:
 jmp snoch8_n10_α
 snoch8_n9_β:
 jmp snoch8_n11_α
snoch8_n10_α:
bb15_α:
# IR_ASSIGN_LIT_I
 lea rdi, [rip + .S0]
 movabs rsi, 0
 call rt_gvar_assign_int@PLT
 jmp snoch8_n11_α
 snoch8_n10_β:
 jmp snoch8_n11_α
snoch8_n11_α:
# IR_VAR gva
bb16_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xgvarg21_done
 xgvarg21_β:
 jmp snoch8_n13_α
xgvarg21_done:
# IR_LIT_I
bb17_α:
 mov qword ptr [r12 + 32], 6
 mov rax, qword ptr [rip + .Lx25_0]
 mov qword ptr [r12 + 40], rax
 jmp xgvarg24_done
 xgvarg24_β:
 jmp snoch8_n13_α
.Lx25_0:
 .quad 10000000
xgvarg24_done:
bb18_α:
# BOX IR_CALL LT(...) inline integer relop [four-port, FAIL->ω]
 mov rdx, qword ptr [rbx + 16]
 cmp edx, 6
 jne .Lx27_0
 mov rax, qword ptr [rbx + 24]
 jmp .Lx27_1
.Lx27_0:
   lea rdi, [rip + .S0]
 call rt_gvar_get_int@PLT
.Lx27_1:
 mov qword ptr [r12 + 64], rax
 mov rcx, 10000000
 mov qword ptr [r12 + 48], 0
 mov qword ptr [r12 + 56], 0
 mov rax, qword ptr [r12 + 64]
 cmp rax, rcx
 jge snoch8_n13_α
 jmp snoch8_n12_α
 snoch8_n11_β:
 jmp snoch8_n13_α
snoch8_n12_α:
# IR_VAR gva
bb19_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 jmp snoch8_n14_α
 snoch8_n12_β:
 jmp snoch8_n13_α
snoch8_n13_α:
bb20_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn31: .string "TIME"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn31]
 lea rsi, [r12 + 112]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je snoch8_n16_α
 jmp snoch8_n15_α
 snoch8_n13_β:
 jmp snoch8_n16_α
snoch8_n14_α:
# IR_LIT_scalar
bb21_α:
 jmp snoch8_n17_α
 snoch8_n14_β:
 jmp snoch8_n13_α
snoch8_n15_α:
bb22_α:
# IR_ASSIGN_CALL gva
 mov rax, qword ptr [r12 + 96]
 mov rcx, qword ptr [r12 + 104]
 mov qword ptr [rbx + 64], rax
 mov qword ptr [rbx + 72], rcx
 jmp snoch8_n16_α
 snoch8_n15_β:
 jmp snoch8_n16_α
snoch8_n16_α:
bb23_α:
# IR_ASSIGN_CONCAT 2 parts
 mov dword ptr [r12 + 112], 0
 lea rax, [rip + .S9]
 mov qword ptr [r12 + 120], rax
 mov dword ptr [r12 + 128], 1
 lea rax, [rip + .S6]
 mov qword ptr [r12 + 136], rax
 lea rdi, [rip + .S8]
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
 jmp snoch8_n18_α
 snoch8_n16_β:
 jmp snoch8_n18_α
snoch8_n17_α:
bb24_α:
# IR_BINOP_GVAR_ARITH
 mov rdx, qword ptr [rbx + 16]
 cmp edx, 6
 jne .Lx36_0
 mov rax, qword ptr [rbx + 24]
 jmp .Lx36_1
.Lx36_0:
 lea rdi, [rip + .S0]
 call rt_gvar_get_int@PLT
.Lx36_1:
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 144], rax
 jmp snoch8_n19_α
 snoch8_n17_β:
 jmp snoch8_n13_α
snoch8_n18_α:
# IR_LIT_scalar
bb25_α:
 jmp snoch8_n20_α
 snoch8_n18_β:
 jmp flat_γ
snoch8_n19_α:
bb26_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 48]
 mov rsi, qword ptr [r12 + 56]
 mov rdx, 6
 mov rcx, qword ptr [r12 + 144]
 call str_concat_d@PLT
 mov qword ptr [r12 + 152], rax
 mov qword ptr [r12 + 160], rdx
 jmp snoch8_n21_α
 snoch8_n19_β:
 jmp snoch8_n13_α
snoch8_n20_α:
# IR_VAR gva
bb27_α:
 mov rax, qword ptr [rbx + 64]
 mov rdx, qword ptr [rbx + 72]
 mov qword ptr [r12 + 168], rax
 mov qword ptr [r12 + 176], rdx
 jmp snoch8_n22_α
 snoch8_n20_β:
 jmp flat_γ
snoch8_n21_α:
bb28_α:
# IR_ASSIGN
 mov rax, qword ptr [r12 + 152]
 mov rcx, qword ptr [r12 + 160]
 mov qword ptr [rbx + 16], rax
 mov qword ptr [rbx + 24], rcx
 jmp snoch8_n23_α
 snoch8_n21_β:
 jmp snoch8_n13_α
snoch8_n22_α:
# IR_VAR gva
bb29_α:
 mov rax, qword ptr [rbx + 32]
 mov rdx, qword ptr [rbx + 40]
 mov qword ptr [r12 + 184], rax
 mov qword ptr [r12 + 192], rdx
 jmp snoch8_n24_α
 snoch8_n22_β:
 jmp flat_γ
snoch8_n23_α:
# IR_VAR gva
bb30_α:
 mov rax, qword ptr [rbx + 48]
 mov rdx, qword ptr [rbx + 56]
 mov qword ptr [r12 + 200], rax
 mov qword ptr [r12 + 208], rdx
 jmp xgvarg45_done
 xgvarg45_β:
 jmp snoch8_n11_α
xgvarg45_done:
bb31_α:
# BOX IR_CALL INC(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+200] -> [r12+232]
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 232], rax
 mov rax, qword ptr [r12 + 208]
 mov qword ptr [r12 + 240], rax
  .section .rodata
  .Lprocfn49: .string "INC"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn49]
 lea rsi, [r12 + 232]
 mov edx, 1
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 216], rax
 mov qword ptr [r12 + 224], rdx
 cmp eax, 99
 je snoch8_n11_α
 jmp snoch8_n25_α
snoch8_n23_β:
 jmp snoch8_n11_α
snoch8_n24_α:
bb32_α:
# IR_BINOP_GVAR_ARITH
 mov rdx, qword ptr [rbx + 32]
 cmp edx, 6
 jne .Lx51_0
 mov rcx, qword ptr [rbx + 40]
 jmp .Lx51_1
.Lx51_0:
 lea rdi, [rip + .S5]
 call rt_gvar_get_int@PLT
 mov rcx, rax
.Lx51_1:
 mov qword ptr [r12 + 248], rcx
 mov rdx, qword ptr [rbx + 64]
 cmp edx, 6
 jne .Lx51_2
 mov rax, qword ptr [rbx + 72]
 jmp .Lx51_3
.Lx51_2:
 lea rdi, [rip + .S7]
 call rt_gvar_get_int@PLT
.Lx51_3:
 mov rcx, qword ptr [r12 + 248]
 sub rax, rcx
 mov qword ptr [r12 + 248], rax
 jmp snoch8_n26_α
 snoch8_n24_β:
 jmp flat_γ
snoch8_n25_α:
bb33_α:
# IR_ASSIGN_CALL gva
 mov rax, qword ptr [r12 + 216]
 mov rcx, qword ptr [r12 + 224]
 mov qword ptr [rbx + 48], rax
 mov qword ptr [rbx + 56], rcx
 jmp snoch8_n11_α
 snoch8_n25_β:
 jmp snoch8_n11_α
snoch8_n26_α:
# IR_LIT_S
bb34_α:
 mov qword ptr [r12 + 256], 1
 mov rax, qword ptr [rip + .Lx54_0]
 mov qword ptr [r12 + 264], rax
 jmp xgvcat53_0d
 xgvcat53_0b:
 jmp flat_γ
.Lx54_0:
 .quad .Lx54_0_s
.Lx54_0_s:
 .string "ms: "
xgvcat53_0d:
bb35_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 256]
 mov rsi, qword ptr [r12 + 264]
 mov rdx, 6
 mov rcx, qword ptr [r12 + 248]
 call str_concat_d@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp snoch8_n27_α
 snoch8_n26_β:
 jmp flat_γ
snoch8_n27_α:
bb36_α:
# IR_ASSIGN
 lea rdi, [rip + .S8]
 mov rsi, qword ptr [r12 + 272]
 mov rdx, qword ptr [r12 + 280]
 call rt_gvar_assign_descr@PLT
 jmp flat_γ
 snoch8_n27_β:
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
.S1: .string "INC"
.S2: .string "TRIM"
.S3: .string "STLIMIT"
.S4: .string "INC(N)"
.S5: .string "T1"
.S6: .string "R"
.S7: .string "T2"
.S8: .string "OUTPUT"
.S9: .string "result: "
.text
