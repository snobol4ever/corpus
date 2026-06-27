  .intel_syntax noprefix
  .text
  .globl proc_cross_α
proc_cross_α:
#=======================================================================================================================
    .global proc_cross_α
    .global proc_cross_β
    .global proc_cross_γ
    .global proc_cross_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_cross_α_body:
xchain0_n0_α:
bb1_α:
# BOX IR_CALL upto(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = varslot [r12+32] -> [r12+96]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 104], rax
# marshal arg1 = varslot [r12+16] -> [r12+112]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lbynamefn2: .string "upto"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn2]
 lea rsi, [r12 + 96]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je xchain0_n2_α
 jmp xchain0_n1_α
xchain0_n0_β:
 jmp xchain0_n2_α
xchain0_n1_α:
bb2_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 80]
 mov rdx, qword ptr [r12 + 88]
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain0_n3_α
 xchain0_n1_β:
 jmp xchain0_n2_α
xchain0_n2_α:
# IR_EVERY
 jmp proc_cross_ω
 xchain0_n2_β:
 jmp proc_cross_ω
xchain0_n3_α:
bb4_α:
# BOX IR_CALL upto(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = varslot [r12+16] -> [r12+192]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 200], rax
# marshal arg1 = varslot [r12+48] -> [r12+208]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 216], rax
  .section .rodata
  .Lcallfn6: .string "[]"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn6]
 lea rsi, [r12 + 192]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
# marshal arg1 = varslot [r12+32] -> [r12+176]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 184], rax
  .section .rodata
  .Lbynamefn7: .string "upto"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn7]
 lea rsi, [r12 + 160]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n4_α
xchain0_n3_β:
 jmp xchain0_n5_α
xchain0_n4_α:
bb5_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 144]
 mov rdx, qword ptr [r12 + 152]
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain0_n6_α
 xchain0_n4_β:
 jmp xchain0_n5_α
xchain0_n5_α:
# IR_EVERY
 jmp xchain0_n0_α
 xchain0_n5_β:
 jmp xchain0_n0_α
xchain0_n6_α:
xargsub11_n0_α:
# IR_VAR
bb7_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xicnarg10_done
 xargsub11_n0_β:
 jmp xchain0_n3_α
xicnarg10_done:
xargsub15_n0_α:
# IR_VAR
bb8_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xicnarg14_done
 xargsub15_n0_β:
 jmp xchain0_n3_α
xicnarg14_done:
xargsub19_n0_α:
# IR_VAR
bb9_α:
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 56], rax
 jmp xicnarg18_done
 xargsub19_n0_β:
 jmp xchain0_n3_α
xicnarg18_done:
xargsub23_n0_α:
# IR_VAR
bb10_α:
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 64], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 72], rax
 jmp xicnarg22_done
 xargsub23_n0_β:
 jmp xchain0_n3_α
xicnarg22_done:
bb11_α:
  .section .rodata
  .Lcall12_pname: .string "xprint"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+16]
 mov rdx, qword ptr [r12+24]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+32]
 mov rdx, qword ptr [r12+40]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [r12+48]
 mov rdx, qword ptr [r12+56]
 call rt_arg_stage@PLT
 mov edi, 3
 mov rsi, qword ptr [r12+64]
 mov rdx, qword ptr [r12+72]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall12_pname]
 mov esi, 4
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 cmp eax, 99
 je xchain0_n3_α
 jmp xchain0_n3_α
xchain0_n6_β:
 jmp xchain0_n3_α
proc_cross_β:
jmp proc_cross_ω
proc_cross_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_cross_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_xprint_α
proc_xprint_α:
#=======================================================================================================================
    .global proc_xprint_α
    .global proc_xprint_β
    .global proc_xprint_γ
    .global proc_xprint_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_xprint_α_body:
xchain27_n0_α:
bb12_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn29: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn29]
 lea rsi, [r12 + 96]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je xchain27_n1_α
 jmp xchain27_n1_α
 xchain27_n0_β:
 jmp xchain27_n1_α
xchain27_n1_α:
bb13_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+32] -> [r12+112]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 120], rax
# marshal arg1 = varslot [r12+48] -> [r12+128]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 136], rax
  .section .rodata
  .Lrkfn31: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn31]
 lea rsi, [r12 + 112]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain27_n11_β
 jmp xchain27_n2_α
 xchain27_n1_β:
 jmp xchain27_n11_β
xchain27_n2_α:
bb14_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 96]
 mov rsi, qword ptr [r12 + 104]
 call rt_write_any_nl@PLT
 jmp xchain27_n4_α
xchain27_n2_β:
xchain27_n2_β:
 jmp xchain27_n11_β
xchain27_n3_α:
# IR_EVERY
 jmp xchain27_n5_α
 xchain27_n3_β:
 jmp xchain27_n5_α
xchain27_n4_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xchain27_n5_α:
# IR_VAR
bb17_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain27_n7_α
 xchain27_n5_β:
 jmp xchain27_n8_α
xchain27_n6_α:
bb18_α:
# BOX IR_CALL [](...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+32] -> [r12+184]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 184], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 192], rax
# marshal arg1 = nested producer-box slot [r12+144] -> [r12+200]
 mov rax, qword ptr [r12 + 144]
 mov qword ptr [r12 + 200], rax
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [r12 + 208], rax
  .section .rodata
  .Lrkfn39: .string "[]"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn39]
 lea rsi, [r12 + 184]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 168], rax
 mov qword ptr [r12 + 176], rdx
 cmp eax, 99
 je proc_xprint_ω
 jmp proc_xprint_γ
 xchain27_n6_β:
 jmp proc_xprint_ω
xchain27_n7_α:
bb19_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 call rt_write_any_nl@PLT
 jmp xchain27_n8_α
xchain27_n7_β:
xchain27_n7_β:
 jmp xchain27_n8_α
xchain27_n8_α:
bb20_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+32] -> [r12+232]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 232], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 240], rax
# marshal arg1 = varslot [r12+48] -> [r12+248]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 248], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 256], rax
  .section .rodata
  .Lrkfn42: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn42]
 lea rsi, [r12 + 232]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 216], rax
 mov qword ptr [r12 + 224], rdx
 cmp eax, 99
 je xchain27_n11_β
 jmp xchain27_n9_α
 xchain27_n8_β:
 jmp xchain27_n11_β
xchain27_n9_α:
bb21_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 216]
 mov rsi, qword ptr [r12 + 224]
 call rt_write_any_nl@PLT
 jmp xchain27_n11_α
xchain27_n9_β:
xchain27_n9_β:
 jmp xchain27_n11_β
xchain27_n10_α:
# IR_EVERY
 jmp proc_xprint_ω
 xchain27_n10_β:
 jmp proc_xprint_ω
xchain27_n11_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xchain27_n12_α:
bb24_α:
# BOX IR_CALL [](...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+32] -> [r12+304]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 312], rax
# marshal arg1 = nested producer-box slot [r12+264] -> [r12+320]
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 272]
 mov qword ptr [r12 + 328], rax
  .section .rodata
  .Lrkfn48: .string "[]"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn48]
 lea rsi, [r12 + 304]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 cmp eax, 99
 je proc_xprint_ω
 jmp proc_xprint_γ
 xchain27_n12_β:
 jmp proc_xprint_ω
proc_xprint_β:
jmp proc_xprint_ω
proc_xprint_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_xprint_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
proc_startup:
  push rbp
  mov rbp, rsp
  .section .rodata
  .Lstartup_pname0: .string "cross"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_cross_α]
  call rt_proc_set_fn@PLT
  .section .rodata
  .Lstartup_pname1: .string "xprint"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname1]
  lea rsi, [rip + proc_xprint_α]
  call rt_proc_set_fn@PLT
  pop rbp
  ret
  .globl main
main:
  push rbp
  mov rbp, rsp
  call proc_startup
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
xchain49_n0_α:
bb25_α:
# BOX IR_CALL read(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn51: .string "read"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn51]
 lea rsi, [r12 + 48]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je xchain49_n2_α
 jmp xchain49_n1_α
 xchain49_n0_β:
 jmp xchain49_n2_α
xchain49_n1_α:
bb26_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 jmp xchain49_n3_α
 xchain49_n1_β:
 jmp xchain49_n2_α
xchain49_n2_α:
xchain49_n2_β:
jmp main_γ
jmp main_γ
xchain49_n3_α:
bb27_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn54: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn54]
 lea rsi, [r12 + 80]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je xchain49_n4_α
 jmp xchain49_n4_α
 xchain49_n3_β:
 jmp xchain49_n4_α
xchain49_n4_α:
bb28_α:
# BOX IR_CALL upto(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+96]
 mov qword ptr [r12 + 96], 1
 mov rax, qword ptr [rip + .Lx55_0]
 mov qword ptr [r12 + 104], rax
 jmp .Lx55_1
.Lx55_0:
 .quad .Lx55_0_s
.Lx55_0_s:
 .string ":"
.Lx55_1:
# marshal arg1 = varslot [r12+0] -> [r12+112]
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lbynamefn56: .string "upto"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn56]
 lea rsi, [r12 + 96]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je xchain49_n6_α
 jmp xchain49_n5_α
xchain49_n4_β:
 jmp xchain49_n6_α
xchain49_n5_α:
bb29_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 80]
 mov rdx, qword ptr [r12 + 88]
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain49_n6_α
 xchain49_n5_β:
 jmp xchain49_n6_α
xchain49_n6_α:
xargsub59_n0_α:
# IR_VAR
bb30_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xargsub59_n1_α
 xargsub59_n0_β:
 jmp xchain49_n0_α
xargsub59_n1_α:
# IR_LIT_I
bb31_α:
 mov qword ptr [r12 + 144], 6
 mov rax, qword ptr [rip + .Lx63_0]
 mov qword ptr [r12 + 152], rax
 jmp xsec62_i1_done
 xsec62_i1_b:
 jmp xchain49_n0_α
.Lx63_0:
 .quad 1
xsec62_i1_done:
# IR_VAR
bb32_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xsec62_i2_done
 xsec62_i2_b:
 jmp xchain49_n0_α
xsec62_i2_done:
# IR_SECTION
bb33_α:
 mov rdi, qword ptr [r12 + 0]
 mov rsi, qword ptr [r12 + 8]
 mov rdx, qword ptr [r12 + 144]
 mov rcx, qword ptr [r12 + 152]
 mov r8, qword ptr [r12 + 16]
 mov r9, qword ptr [r12 + 24]
 call subscript_get2@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp xicnarg58_done
 xargsub59_n1_β:
 jmp xchain49_n0_α
xicnarg58_done:
xargsub68_n0_α:
# IR_VAR
bb34_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xargsub68_n1_α
 xargsub68_n0_β:
 jmp xchain49_n0_α
xargsub68_n1_α:
xsec71_i1_done:
# IR_LIT_I
bb36_α:
 mov qword ptr [r12 + 176], 6
 mov rax, qword ptr [rip + .Lx73_0]
 mov qword ptr [r12 + 184], rax
 jmp xsec71_i2_done
 xsec71_i2_b:
 jmp xchain49_n0_α
.Lx73_0:
 .quad 0
xsec71_i2_done:
 lea rdi, [rip + .S1]
 call rt_bomb@PLT
 ud2
xicnarg67_done:
bb38_α:
  .section .rodata
  .Lcall39_pname: .string "cross"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+160]
 mov rdx, qword ptr [r12+168]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+192]
 mov rdx, qword ptr [r12+200]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall39_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 cmp eax, 99
 je xchain49_n0_α
 jmp xchain49_n7_α
xchain49_n6_β:
 jmp xchain49_n0_α
xchain49_n7_α:
jmp xchain49_n0_α
xchain49_n7_β:
jmp xchain49_n0_α
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
.section .rodata
.S0: .string "bb_to: unhandled (needs static operands, nonzero by, descr flat-chain)"
.S1: .string "bb_section: needs own slot + base/i1/i2 operand slots"
.text
