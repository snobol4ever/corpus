  .intel_syntax noprefix
  .text
  .globl main
main:
  push rbp
  mov rbp, rsp
  call rt_frame@PLT
  mov rdi, rax
  xor esi, esi
  call main_α
  xor eax, eax
  pop rbp
  ret
main_α:
#=======================================================================================================================
    .global main_α
    .global main_β
    .global main_γ
    .global main_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
main_α_body:
xchain0_n0_α:
bb1_α:
# BOX IR_CALL table(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+32]
 mov qword ptr [r12 + 32], 1
 mov rax, qword ptr [rip + .Lx1_0]
 mov qword ptr [r12 + 40], rax
 jmp .Lx1_1
.Lx1_0:
 .quad .Lx1_0_s
.Lx1_0_s:
 .string "0"
.Lx1_1:
  .section .rodata
  .Lrkfn2: .string "table"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2]
 lea rsi, [r12 + 32]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 cmp eax, 99
 je xchain0_n2_α
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp xchain0_n2_α
xchain0_n1_α:
bb2_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 16]
 mov rdx, qword ptr [r12 + 24]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp xchain0_n2_α
xchain0_n2_α:
# IR_VAR
bb3_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp xchain0_n4_α
xchain0_n3_α:
# IR_LIT_S
bb4_α:
 mov qword ptr [r12 + 64], 1
 mov rax, qword ptr [rip + .Lx7_0]
 mov qword ptr [r12 + 72], rax
 jmp xiset6_val_done
 xiset6_val_β:
 jmp xchain0_n4_α
.Lx7_0:
 .quad .Lx7_0_s
.Lx7_0_s:
 .string "1"
xiset6_val_done:
# IR_LIT_S
bb5_α:
 mov qword ptr [r12 + 80], 1
 mov rax, qword ptr [rip + .Lx8_0]
 mov qword ptr [r12 + 88], rax
 jmp xiset6_key_done
 xiset6_key_β:
 jmp xchain0_n4_α
.Lx8_0:
 .quad .Lx8_0_s
.Lx8_0_s:
 .string "alice"
xiset6_key_done:
bb6_α:
# IR_IDX_SET: base/key/value from [ζ+off]; inline DT_A+int fast path, else subscript_set
 mov rax, qword ptr [r12 + 0]
 cmp eax, 4
 jne .Lx10_0
 mov rax, qword ptr [r12 + 80]
 cmp eax, 6
 jne .Lx10_0
 mov rsi, qword ptr [r12 + 8]
 mov rcx, qword ptr [r12 + 88]
 mov r8, qword ptr [rsi]
 sub ecx, r8d
 js .Lx10_0
 mov r9, qword ptr [rsi + 4]
 sub r9d, r8d
 cmp ecx, r9d
 jg .Lx10_0
 mov r11, qword ptr [rsi + 24]
 movsxd rcx, ecx
 add rcx, rcx
 add rcx, rcx
 add rcx, rcx
 add rcx, rcx
 add r11, rcx
 mov rax, qword ptr [r12 + 64]
 mov rdx, qword ptr [r12 + 72]
 mov qword ptr [r11 + 0], rax
 mov qword ptr [r11 + 8], rdx
 jmp xchain0_n4_α
.Lx10_0:
 mov rdi, qword ptr [r12 + 0]
 mov rsi, qword ptr [r12 + 8]
 mov rdx, qword ptr [r12 + 80]
 mov rcx, qword ptr [r12 + 88]
 mov r8, qword ptr [r12 + 64]
 mov r9, qword ptr [r12 + 72]
 call subscript_set@PLT
 cmp eax, 0
 je xchain0_n4_α
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp xchain0_n4_α
xchain0_n4_α:
# IR_VAR
bb7_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xchain0_n5_α
 xchain0_n4_β:
 jmp xchain0_n6_α
xchain0_n5_α:
# IR_LIT_S
bb8_α:
 mov qword ptr [r12 + 96], 1
 mov rax, qword ptr [rip + .Lx14_0]
 mov qword ptr [r12 + 104], rax
 jmp xiset13_val_done
 xiset13_val_β:
 jmp xchain0_n6_α
.Lx14_0:
 .quad .Lx14_0_s
.Lx14_0_s:
 .string "1"
xiset13_val_done:
# IR_LIT_S
bb9_α:
 mov qword ptr [r12 + 112], 1
 mov rax, qword ptr [rip + .Lx15_0]
 mov qword ptr [r12 + 120], rax
 jmp xiset13_key_done
 xiset13_key_β:
 jmp xchain0_n6_α
.Lx15_0:
 .quad .Lx15_0_s
.Lx15_0_s:
 .string "bob"
xiset13_key_done:
bb10_α:
# IR_IDX_SET: base/key/value from [ζ+off]; inline DT_A+int fast path, else subscript_set
 mov rax, qword ptr [r12 + 0]
 cmp eax, 4
 jne .Lx17_0
 mov rax, qword ptr [r12 + 112]
 cmp eax, 6
 jne .Lx17_0
 mov rsi, qword ptr [r12 + 8]
 mov rcx, qword ptr [r12 + 120]
 mov r8, qword ptr [rsi]
 sub ecx, r8d
 js .Lx17_0
 mov r9, qword ptr [rsi + 4]
 sub r9d, r8d
 cmp ecx, r9d
 jg .Lx17_0
 mov r11, qword ptr [rsi + 24]
 movsxd rcx, ecx
 add rcx, rcx
 add rcx, rcx
 add rcx, rcx
 add rcx, rcx
 add r11, rcx
 mov rax, qword ptr [r12 + 96]
 mov rdx, qword ptr [r12 + 104]
 mov qword ptr [r11 + 0], rax
 mov qword ptr [r11 + 8], rdx
 jmp xchain0_n6_α
.Lx17_0:
 mov rdi, qword ptr [r12 + 0]
 mov rsi, qword ptr [r12 + 8]
 mov rdx, qword ptr [r12 + 112]
 mov rcx, qword ptr [r12 + 120]
 mov r8, qword ptr [r12 + 96]
 mov r9, qword ptr [r12 + 104]
 call subscript_set@PLT
 cmp eax, 0
 je xchain0_n6_α
 jmp xchain0_n6_α
 xchain0_n5_β:
 jmp xchain0_n6_α
xchain0_n6_α:
bb11_α:
# BOX IR_CALL [](...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = varslot [r12+0] -> [r12+144]
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 152], rax
# marshal arg1 = LIT_S (string REG-RO sealed in-band) -> [r12+160]
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx18_2]
 mov qword ptr [r12 + 168], rax
 jmp .Lx18_3
.Lx18_2:
 .quad .Lx18_2_s
.Lx18_2_s:
 .string "alice"
.Lx18_3:
  .section .rodata
  .Lbynamefn19: .string "[]"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn19]
 lea rsi, [r12 + 144]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je xchain0_n8_α
 jmp xchain0_n7_α
xchain0_n6_β:
 jmp xchain0_n8_α
xchain0_n7_α:
bb12_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 128]
 mov rsi, qword ptr [r12 + 136]
 call rt_write_any_nl@PLT
 jmp xchain0_n8_α
xchain0_n7_β:
xchain0_n7_β:
 jmp xchain0_n8_α
xchain0_n8_α:
bb13_α:
# BOX IR_CALL [](...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = varslot [r12+0] -> [r12+192]
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 200], rax
# marshal arg1 = LIT_S (string REG-RO sealed in-band) -> [r12+208]
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx21_2]
 mov qword ptr [r12 + 216], rax
 jmp .Lx21_3
.Lx21_2:
 .quad .Lx21_2_s
.Lx21_2_s:
 .string "bob"
.Lx21_3:
  .section .rodata
  .Lbynamefn22: .string "[]"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn22]
 lea rsi, [r12 + 192]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 cmp eax, 99
 je xchain0_n10_α
 jmp xchain0_n9_α
xchain0_n8_β:
 jmp xchain0_n10_α
xchain0_n9_α:
bb14_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 176]
 mov rsi, qword ptr [r12 + 184]
 call rt_write_any_nl@PLT
 jmp xchain0_n10_α
xchain0_n9_β:
xchain0_n9_β:
 jmp xchain0_n10_α
xchain0_n10_α:
bb15_α:
# BOX IR_CALL [](...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = varslot [r12+0] -> [r12+240]
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 248], rax
# marshal arg1 = LIT_S (string REG-RO sealed in-band) -> [r12+256]
 mov qword ptr [r12 + 256], 1
 mov rax, qword ptr [rip + .Lx24_2]
 mov qword ptr [r12 + 264], rax
 jmp .Lx24_3
.Lx24_2:
 .quad .Lx24_2_s
.Lx24_2_s:
 .string "carol"
.Lx24_3:
  .section .rodata
  .Lbynamefn25: .string "[]"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn25]
 lea rsi, [r12 + 240]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 cmp eax, 99
 je main_ω
 jmp xchain0_n11_α
xchain0_n10_β:
 jmp main_ω
xchain0_n11_α:
bb16_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 224]
 mov rsi, qword ptr [r12 + 232]
 call rt_write_any_nl@PLT
 jmp main_γ
xchain0_n11_β:
xchain0_n11_β:
 jmp main_ω
main_β:
jmp main_ω
main_γ:
mov eax, 1
xor edx, edx
pop r12
ret
main_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
