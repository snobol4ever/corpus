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
# marshal arg0 = LIT_I -> [r12+48]
 mov qword ptr [r12 + 48], 6
 movabs rax, 0
 mov qword ptr [r12 + 56], rax
  .section .rodata
  .Lrkfn2: .string "table"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2]
 lea rsi, [r12 + 48]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je xchain0_n2_α
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp xchain0_n2_α
xchain0_n1_α:
bb2_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
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
# IR_LIT_I
bb4_α:
 mov qword ptr [r12 + 80], 6
 mov rax, qword ptr [rip + .Lx7_0]
 mov qword ptr [r12 + 88], rax
 jmp xiset6_val_done
 xiset6_val_β:
 jmp xchain0_n4_α
.Lx7_0:
 .quad 10
xiset6_val_done:
# IR_LIT_I
bb5_α:
 mov qword ptr [r12 + 96], 6
 mov rax, qword ptr [rip + .Lx8_0]
 mov qword ptr [r12 + 104], rax
 jmp xiset6_key_done
 xiset6_key_β:
 jmp xchain0_n4_α
.Lx8_0:
 .quad 1
xiset6_key_done:
bb6_α:
# IR_IDX_SET: base/key/value from [ζ+off]; inline DT_A+int fast path, else subscript_set
 mov rax, qword ptr [r12 + 0]
 cmp eax, 4
 jne .Lx10_0
 mov rax, qword ptr [r12 + 96]
 cmp eax, 6
 jne .Lx10_0
 mov rsi, qword ptr [r12 + 8]
 mov rcx, qword ptr [r12 + 104]
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
 mov rax, qword ptr [r12 + 80]
 mov rdx, qword ptr [r12 + 88]
 mov qword ptr [r11 + 0], rax
 mov qword ptr [r11 + 8], rdx
 jmp xchain0_n4_α
.Lx10_0:
 mov rdi, qword ptr [r12 + 0]
 mov rsi, qword ptr [r12 + 8]
 mov rdx, qword ptr [r12 + 96]
 mov rcx, qword ptr [r12 + 104]
 mov r8, qword ptr [r12 + 80]
 mov r9, qword ptr [r12 + 88]
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
# IR_LIT_I
bb8_α:
 mov qword ptr [r12 + 112], 6
 mov rax, qword ptr [rip + .Lx14_0]
 mov qword ptr [r12 + 120], rax
 jmp xiset13_val_done
 xiset13_val_β:
 jmp xchain0_n6_α
.Lx14_0:
 .quad 20
xiset13_val_done:
# IR_LIT_I
bb9_α:
 mov qword ptr [r12 + 128], 6
 mov rax, qword ptr [rip + .Lx15_0]
 mov qword ptr [r12 + 136], rax
 jmp xiset13_key_done
 xiset13_key_β:
 jmp xchain0_n6_α
.Lx15_0:
 .quad 2
xiset13_key_done:
bb10_α:
# IR_IDX_SET: base/key/value from [ζ+off]; inline DT_A+int fast path, else subscript_set
 mov rax, qword ptr [r12 + 0]
 cmp eax, 4
 jne .Lx17_0
 mov rax, qword ptr [r12 + 128]
 cmp eax, 6
 jne .Lx17_0
 mov rsi, qword ptr [r12 + 8]
 mov rcx, qword ptr [r12 + 136]
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
 mov rax, qword ptr [r12 + 112]
 mov rdx, qword ptr [r12 + 120]
 mov qword ptr [r11 + 0], rax
 mov qword ptr [r11 + 8], rdx
 jmp xchain0_n6_α
.Lx17_0:
 mov rdi, qword ptr [r12 + 0]
 mov rsi, qword ptr [r12 + 8]
 mov rdx, qword ptr [r12 + 128]
 mov rcx, qword ptr [r12 + 136]
 mov r8, qword ptr [r12 + 112]
 mov r9, qword ptr [r12 + 120]
 call subscript_set@PLT
 cmp eax, 0
 je xchain0_n6_α
 jmp xchain0_n6_α
 xchain0_n5_β:
 jmp xchain0_n6_α
xchain0_n6_α:
# IR_VAR
bb11_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xchain0_n7_α
 xchain0_n6_β:
 jmp xchain0_n8_α
xchain0_n7_α:
# IR_LIT_I
bb12_α:
 mov qword ptr [r12 + 144], 6
 mov rax, qword ptr [rip + .Lx21_0]
 mov qword ptr [r12 + 152], rax
 jmp xiset20_val_done
 xiset20_val_β:
 jmp xchain0_n8_α
.Lx21_0:
 .quad 30
xiset20_val_done:
# IR_LIT_I
bb13_α:
 mov qword ptr [r12 + 160], 6
 mov rax, qword ptr [rip + .Lx22_0]
 mov qword ptr [r12 + 168], rax
 jmp xiset20_key_done
 xiset20_key_β:
 jmp xchain0_n8_α
.Lx22_0:
 .quad 3
xiset20_key_done:
bb14_α:
# IR_IDX_SET: base/key/value from [ζ+off]; inline DT_A+int fast path, else subscript_set
 mov rax, qword ptr [r12 + 0]
 cmp eax, 4
 jne .Lx24_0
 mov rax, qword ptr [r12 + 160]
 cmp eax, 6
 jne .Lx24_0
 mov rsi, qword ptr [r12 + 8]
 mov rcx, qword ptr [r12 + 168]
 mov r8, qword ptr [rsi]
 sub ecx, r8d
 js .Lx24_0
 mov r9, qword ptr [rsi + 4]
 sub r9d, r8d
 cmp ecx, r9d
 jg .Lx24_0
 mov r11, qword ptr [rsi + 24]
 movsxd rcx, ecx
 add rcx, rcx
 add rcx, rcx
 add rcx, rcx
 add rcx, rcx
 add r11, rcx
 mov rax, qword ptr [r12 + 144]
 mov rdx, qword ptr [r12 + 152]
 mov qword ptr [r11 + 0], rax
 mov qword ptr [r11 + 8], rdx
 jmp xchain0_n8_α
.Lx24_0:
 mov rdi, qword ptr [r12 + 0]
 mov rsi, qword ptr [r12 + 8]
 mov rdx, qword ptr [r12 + 160]
 mov rcx, qword ptr [r12 + 168]
 mov r8, qword ptr [r12 + 144]
 mov r9, qword ptr [r12 + 152]
 call subscript_set@PLT
 cmp eax, 0
 je xchain0_n8_α
 jmp xchain0_n8_α
 xchain0_n7_β:
 jmp xchain0_n8_α
xchain0_n8_α:
# IR_LIT_I
bb15_α:
 mov qword ptr [r12 + 176], 6
 mov rax, qword ptr [rip + .Lx25_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain0_n9_α
 xchain0_n8_β:
 jmp xchain0_n10_α
.Lx25_0:
 .quad 0
xchain0_n9_α:
bb16_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain0_n10_α
 xchain0_n9_β:
 jmp xchain0_n10_α
xchain0_n10_α:
# IR_VAR
bb17_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain0_n11_α
 xchain0_n10_β:
 jmp xchain0_n13_α
xchain0_n11_α:
bb18_α:
# BOX IR_CALL [](...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = varslot [r12+0] -> [r12+224]
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 232], rax
# marshal arg0 = varslot [r12+0] -> [r12+256]
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 264], rax
  .section .rodata
  .Lcallfn30: .string "key"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn30]
 lea rsi, [r12 + 256]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
  .section .rodata
  .Lbynamefn31: .string "[]"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn31]
 lea rsi, [r12 + 224]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 cmp eax, 99
 je xchain0_n13_α
 jmp xchain0_n12_α
xchain0_n11_β:
 jmp xchain0_n13_α
xchain0_n12_α:
bb19_α:
# IR_BINOP_ARITH
 mov rax, qword ptr [r12 + 24]
 mov rcx, qword ptr [r12 + 216]
 add rax, rcx
 mov qword ptr [r12 + 272], 6
 mov qword ptr [r12 + 280], rax
 jmp xchain0_n14_α
 xchain0_n12_β:
 jmp xchain0_n13_α
xchain0_n13_α:
# IR_EVERY
 jmp xchain0_n15_α
 xchain0_n13_β:
 jmp xchain0_n15_α
xchain0_n14_α:
bb21_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 272]
 mov rdx, qword ptr [r12 + 280]
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain0_n13_α
 xchain0_n14_β:
 jmp xchain0_n13_α
xchain0_n15_α:
# IR_VAR
bb22_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain0_n16_α
 xchain0_n15_β:
 jmp main_ω
xchain0_n16_α:
bb23_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 call rt_write_any_nl@PLT
 jmp main_γ
xchain0_n16_β:
xchain0_n16_β:
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
